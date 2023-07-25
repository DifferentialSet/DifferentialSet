FROM nixos/nix

RUN git clone https://github.com/DifferentialSet/DifferentialSet.git &&\
    cd DifferentialSet &&\
    git checkout 996c14bdf2b6f663b38177983e6fdf6842fd7959
WORKDIR /DifferentialSet

RUN nix --extra-experimental-features "nix-command flakes" develop 

RUN echo -e '#!/usr/bin/env bash\n\
nix --extra-experimental-features "nix-command flakes" develop \n\
/bin/bash' > /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]