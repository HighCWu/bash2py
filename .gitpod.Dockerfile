FROM gitpod/workspace-full

RUN mkdir -p /root/tmp
COPY extract_docker_image.sh /root/tmp
RUN cd /root/tmp && bash extract_docker_image.sh
RUN rm -rf /root/tmp
