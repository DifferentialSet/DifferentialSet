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

          cacheaudit = pkgs.stdenv.mkDerivation rec {
            pname = "cacheaudit";
            version = "fine-trace";

            src = pkgs.fetchFromGitHub {
              owner = "cacheaudit";
              repo = pname;
              rev = "fine-trace";
              sha256 = "sha256-NJQ3NxzgsOgAaHFItGkeWqOFhjQK0KpMVxLkyHBmJlQ="; 
            };

            buildInputs = [ pkgs.ocaml-ng.ocamlPackages_4_02.ocaml ];

            buildPhase = ''
              make -j$(nproc)
            '';

            installPhase = ''
              mkdir -p $out/bin
              mv cacheaudit $out/bin
            '';

          };

          gcc49 = pkgs.stdenvNoCC.mkDerivation rec {
            name = "gcc49";
            buildInputs = [ pkgs.pkgsi686Linux.gcc48 pkgs.which ];
            dontUnpack = true;
            installPhase = ''
              mkdir -p $out/bin
              cp `which gcc` $out/bin/gcc4
            '';
          };
          
          cryptominisat = pkgs.stdenv.mkDerivation rec {
            pname = "cryptominisat";
            version = "97663f9c302d3d1e142bc5a2088480ff7cf9f350";

            src = pkgs.fetchFromGitHub {
              owner = "msoos";
              repo = pname;
              rev = version;
              sha256 = "sha256-J2Fd86UUqyxf1Bdgce2WJOoTnGkE14LpjGsWzpqrRnQ=";
            };

            buildInputs = [ pkgs.zlib.dev pkgs.boost.dev pkgs.cmake pkgs.m4ri pkgs.gmp.dev ];

            configurePhase = ''
              mkdir build
              cd build
              cmake -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX=$out -DLARGEMEM=ON ..
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
              rev = "4bd01d210f3121febcd5ba1190271d919c86041e";
              sha256 = "sha256-nsWNVrXqym+q7B8McefrQ9ShFGp8QLYVY0dTNgZn4oU="; 
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
              rev = "4.0.2";
              sha256 = "sha256-tZzwX6XlEKVSAIgdgciZ1VS3uMC196jkCqhJ2cv/7HQ="; 
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
              make install -j$(nproc) goto-cc goto-instrument
            '';
          };

        in {
          devShell = with pkgs; mkShell {
            buildInputs = [
              (python3.withPackages (ps: with ps; [ z3 joblib tqdm pycparser ipdb ipykernel
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
              gcc49
              cacheaudit
              cryptominisat
              approxmc
              minisat2
              cbmc
              pkgs.linuxKernel.packages.linux_5_15.perf
              pkgs.py-spy
              pkgs.jupyter
              pkgs.util-linux
              pkgs.vim
            ];
          };
        });
}