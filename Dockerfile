FROM debian:12
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y python3 python3-pip z3 gcc-multilib linux-perf g++-11 gcc-11 flex bison make git curl patch cmake
RUN pip3 install --break-system-packages z3-solver joblib tqdm pycparser

# Build and Install CBMC
WORKDIR /app
COPY ./cbmc/ /app/cbmc
RUN cd /app/cbmc &&\
mkdir build &&\
cd build &&\
CC=/usr/bin/gcc-11 CXX=/usr/bin/g++-11 cmake .. -DCMAKE_BUILD_TYPE:STRING=Release -DWITH_JBMC=OFF -Denable_cbmc_tests=OFF && make install -j goto-cc goto-instrument 

# Build and Install ApproxMC
RUN apt-get install -y zlib1g-dev libboost-program-options-dev libboost-serialization-dev libm4ri-dev libgmp3-dev
RUN cd /app &&\
git clone https://github.com/msoos/cryptominisat &&\
cd cryptominisat &&\
git checkout 5.11.11 &&\
mkdir build && cd build &&\
cmake -DCMAKE_BUILD_TYPE:STRING=Release .. &&\
make -j && make install &&\
ldconfig
RUN cd /app &&\
git clone https://github.com/meelgroup/arjun &&\
cd arjun &&\
git checkout 6c4115470d817f5c536c5b6a928921171387860a &&\
mkdir build && cd build &&\
cmake .. &&\
make -j && make install &&\
ldconfig
RUN cd /app &&\
git clone https://github.com/meelgroup/approxmc/ &&\
cd approxmc &&\
git checkout 1fd92719778126238319629ab005d7ac01919499 &&\
mkdir build && cd build &&\
cmake -DCMAKE_BUILD_TYPE:STRING=Release .. &&\
make -j && make install &&\
ldconfig

RUN apt-get install -y vim clang

COPY ./benchmarks/ /app/benchmarks
COPY ./scripts/ /app/scripts

WORKDIR /app/scripts
RUN chmod +x run_miti.py && chmod +x run_quant.py

COPY ./entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
CMD /app/entrypoint.sh ; tail -f /dev/null