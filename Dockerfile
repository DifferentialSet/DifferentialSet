FROM nixos/nix

# RUN git clone https://github.com/DifferentialSet/DifferentialSet.git &&\
#     cd DifferentialSet &&\
#     git checkout bf475e002f7aa6560997ad61aeb391ee1e359780
WORKDIR /DifferentialSet
COPY . .

RUN nix --extra-experimental-features "nix-command flakes" develop 

RUN echo -e '#!/usr/bin/env bash\n\
nix --extra-experimental-features "nix-command flakes" develop \n\
/bin/bash' > /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]