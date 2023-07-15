FROM nixos/nix

RUN git clone https://github.com/DifferentialSet/DifferentialSet.git
WORKDIR /DifferentialSet
RUN git checkout 2ed6b8b5580a84d76ce37f44ebaad9f8277180d7

RUN nix --extra-experimental-features "nix-command flakes" develop 

RUN echo -e '#!/usr/bin/env bash\n\
nix --extra-experimental-features "nix-command flakes" develop \n\
/bin/bash' > /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]