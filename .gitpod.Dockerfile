FROM gitpod/workspace-full

RUN sudo mkdir -p /root/tmp
COPY extract_docker_image.sh /root/tmp/extract_docker_image.sh
WORKDIR /root/tmp
RUN sudo extract_docker_image.sh
RUN sudo rm -rf /root/tmp
WORKDIR /workspace
