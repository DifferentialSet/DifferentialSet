{
  description = "A very cool project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05"; 
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
      flake-utils.lib.eachDefaultSystem (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          
          cryptominisat = pkgs.stdenv.mkDerivation rec {
            pname = "cryptominisat";
            version = "5.11.11";

            src = pkgs.fetchFromGitHub {
              owner = "msoos";
              repo = pname;
              rev = version;
              sha256 = "sha256-TYuOgOOs1EsdNz7ctZMsArTlw3QzHjiPZVozuniiPcI=";
            };

            buildInputs = [ pkgs.zlib.dev pkgs.boost.dev pkgs.cmake pkgs.m4ri pkgs.gmp.dev ];

            configurePhase = ''
              mkdir build
              cd build
              cmake -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX=$out ..
            '';

            buildPhase = ''
              make -j$(nproc)
            '';

            installPhase = ''
              make install
            '';
          };

          arjun = pkgs.stdenv.mkDerivation rec {
            pname = "arjun";
            version = "unstable";  

            src = pkgs.fetchFromGitHub {
              owner = "meelgroup";
              repo = pname;
              rev = "6c4115470d817f5c536c5b6a928921171387860a";
              sha256 = "06vvxh36grf27kybk1b5p81fh2rwkkf651d72zcz7dqm685fdq6v"; 
            };

            buildInputs = [ pkgs.zlib.dev pkgs.boost.dev pkgs.cmake pkgs.m4ri pkgs.gmp.dev cryptominisat ];

            configurePhase = ''
              mkdir build
              cd build
              cmake -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX=$out ..
            '';

            buildPhase = ''
              make -j$(nproc)
            '';

            installPhase = ''
              make install
            '';
          };
          approxmc = pkgs.stdenv.mkDerivation rec {
            pname = "approxmc";
            version = "unstable";  

            src = pkgs.fetchFromGitHub {
              owner = "meelgroup";
              repo = pname;
              rev = "1fd92719778126238319629ab005d7ac01919499";
              sha256 = "1ig22x3k6qazplszm73mqmm5mn78h7zhh8494q2cdm072944fiy6"; 
            };

            buildInputs = [ pkgs.zlib.dev pkgs.boost.dev pkgs.cmake pkgs.m4ri pkgs.gmp.dev cryptominisat arjun ];

            configurePhase = ''
              mkdir build
              cd build
              cmake -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX=$out ..
            '';

            buildPhase = ''
              make -j$(nproc)
            '';

            installPhase = ''
              make install
            '';
          };
          minisat2 = pkgs.stdenv.mkDerivation rec {
            pname = "minisat2";
            version = "2.2.1";

            src = pkgs.fetchurl {
              url = "http://ftp.debian.org/debian/pool/main/m/minisat2/minisat2_${version}.orig.tar.gz";
              sha256 = "sha256-5Ur6PBksF1O8gHXAx+Em1cSV2QZuP5CiWICRFJrJykA=";
            };

            patchFile = ./cbmc/scripts/minisat-2.2.1-patch;
            newCMakeLists = ./cbmc/scripts/minisat2_CMakeLists.txt;

            patchPhase = ''
              patch -p1 -i ${patchFile}
              cp ${newCMakeLists} CMakeLists.txt
            '';

            buildPhase = "cp -r . $out";
            installPhase = "echo NONE";
          };
          cbmc = pkgs.gcc9Stdenv.mkDerivation rec {
            pname = "cbmc";
            version = "unstable";  

            src = ./cbmc;

            buildInputs = [ pkgs.cmake pkgs.bison pkgs.flex pkgs.z3 pkgs.git pkgs.perl ];

            patchPhase = ''
                patchShebangs --build ./src/ansi-c/library_check.sh
                patchShebangs --build ./scripts/bash-autocomplete/extract_switches.sh
            '';

            configurePhase = ''
              mkdir build
              cd build
              cmake .. -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX=$out -DWITH_JBMC=OFF -Denable_cbmc_tests=OFF -Dminisat2_SOURCE_DIR=${minisat2.out} -Dminisat2_BINARY_DIR=$out/minisat2
            '';

            buildPhase = ''
              make -j$(nproc) goto-cc goto-instrument
            '';

            installPhase = ''
              make install
            '';
          };

        in {
          devShell = with pkgs; mkShell {
            buildInputs = [
              (python3.withPackages (ps: with ps; [ z3 joblib tqdm pycparser ipdb
                                                    (
                                                    buildPythonPackage rec {
                                                      pname = "pycryptosat";
                                                      version = "5.11.11";
                                                      src = fetchPypi {
                                                        inherit pname version;
                                                        sha256 = "sha256-VsmbDuPAVpKOebM+q5EXwLvcJoc9y74lLyCsjkCk5tY=";
                                                      };
                                                      propagatedBuildInputs = [
                                                        # Specify dependencies
                                                        pkgs.python3Packages.toml
                                                      ];
                                                    }
                                                  )
              ]))
              cryptominisat
              arjun
              approxmc
              minisat2
              cbmc
              pkgs.linuxKernel.packages.linux_5_15.perf
            ];
          };
        });
}