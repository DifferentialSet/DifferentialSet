FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y python3 python3-pip z3 gcc-multilib linux-tools-common linux-tools-generic linux-tools-`uname -r` g++ gcc flex bison make git curl patch cmake
RUN pip3 install z3-solver joblib tqdm pycparser

# Build and Install CBMC
WORKDIR /app
COPY ./cbmc/ /app/cbmc
RUN cd /app/cbmc && mkdir build && cd build && cmake .. -DCMAKE_BUILD_TYPE:STRING=Release && make -j goto-cc goto-instrument && make install

# Build and Install ApproxMC
RUN apt-get install -y zlib1g-dev libboost-program-options-dev libm4ri-dev libgmp3-dev
RUN cd /app &&\
git clone https://github.com/msoos/cryptominisat &&\
cd cryptominisat &&\
mkdir build && cd build &&\
cmake -DCMAKE_BUILD_TYPE:STRING=Release .. &&\
make -j && make install
RUN cd /app &&\
git clone https://github.com/meelgroup/approxmc/ &&\
cd approxmc &&\
mkdir build && cd build &&\
cmake -DCMAKE_BUILD_TYPE:STRING=Release .. &&\
make -j && make install

COPY ./benchmarks/ /app/benchmarks
COPY ./scripts/ /app/scripts

WORKDIR /app/scripts
RUN chmod +x run_miti.py && chmod +x run_quant.py

