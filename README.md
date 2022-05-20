We recommend run DSA through Docker. You can find prebuilt Docker Image at https://hub.docker.com/r/hflsmax/dsa, or you can build it yourself by running `docker build -t dsa .`.


Once you've obtain the Docker Image, run the following command. 64G of memory is required. The entire process could take several hours to run. While the script is running, you can detach from the docker session using crl+p followed by crl+q, so that it runs in the backend.
1. `docker run --cap-add SYS_ADMIN -it dsa` # The additional capability is needed to get hardward counter for Perf
2. `./run_miti.py` # After the script finishes, see results in miti_metrics.json
3. `./run_quant.py` # After the script finishes, see results in quant_metrics.json