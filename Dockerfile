FROM nixos/nix

RUN git clone https://github.com/DifferentialSet/DifferentialSet.git &&\
    cd DifferentialSet &&\
    git checkout 50d0927bac18120db68af9fea241cf7c569df901
WORKDIR /DifferentialSet

RUN nix --extra-experimental-features "nix-command flakes" develop 

RUN echo -e '#!/usr/bin/env bash\n\
nix --extra-experimental-features "nix-command flakes" develop \n\
/bin/bash' > /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]