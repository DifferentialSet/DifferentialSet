FROM nixos/nix

RUN git clone https://github.com/DifferentialSet/DifferentialSet.git &&\
    cd DifferentialSet &&\
    git checkout 2f78fa93c1fda8949d3b652b43664032c5ce5ad3
WORKDIR /DifferentialSet

RUN nix --extra-experimental-features "nix-command flakes" develop 

RUN echo -e '#!/usr/bin/env bash\n\
nix --extra-experimental-features "nix-command flakes" develop \n\
/bin/bash' > /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]