FROM gitpod/workspace-full

RUN sudo mkdir -p /root/tmp
COPY extract_docker_image.sh /root/tmp
RUN sudo bash extract_docker_image.sh
RUN sudo rm -rf /root/tmp
