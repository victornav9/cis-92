FROM docker.io/ubuntu:20.04

RUN apt update -y && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip tzdata
RUN python3 -m pip install django
RUN alias python=python3

COPY app/mysite/ /app

WORKDIR /app/

ENTRYPOINT ["/bin/bash"]
CMD ["-c", "./entrypoint.sh"]