FROM gitpod/workspace-full

RUN mkdir -p /workspace/tmp
RUN git clone https://github.com/jjlin/docker-image-extract
WORKDIR /workspace/tmp/docker-image-extract
RUN /bin/bash -c "./docker-image-extract -o ../output imiell/bash2py"
WORKDIR /workspace/tmp
RUN sudo cp -r output/root/bin/* /root/bin/
RUN sudo cp -r output/opt/* /opt/
RUN rm -rf /workspace/tmp
WORKDIR /workspace