FROM nixos/nix

RUN git clone https://github.com/DifferentialSet/DifferentialSet.git &&\
    cd DifferentialSet &&\
    git checkout 8446bad5d30de5ef3bd3c7966029cddd8dea2958
WORKDIR /DifferentialSet

RUN nix --extra-experimental-features "nix-command flakes" develop 

RUN echo -e '#!/usr/bin/env bash\n\
nix --extra-experimental-features "nix-command flakes" develop \n\
/bin/bash' > /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]