FROM nixos/nix

RUN git clone https://github.com/DifferentialSet/DifferentialSet.git &&\
    cd DifferentialSet &&\
    git checkout 8550a4611edb6eb41ae421673d9c234e969e20cd
WORKDIR /DifferentialSet

RUN nix --extra-experimental-features "nix-command flakes" develop 

RUN echo -e '#!/usr/bin/env bash\n\
nix --extra-experimental-features "nix-command flakes" develop \n\
/bin/bash' > /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]