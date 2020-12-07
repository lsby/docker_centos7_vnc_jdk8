FROM lsby/centos7_vnc:latest

USER root

ADD docker /root/docker
WORKDIR /root/docker

RUN chmod a+x run.sh && bash run.sh 
