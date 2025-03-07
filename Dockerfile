FROM ubuntu:bionic
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN apt-get update && \
    apt-get install -y build-essential libxml2-dev python3-dev python3-pip zlib1g-dev python3-requests && \
    pip3 install setuptools && \
    pip3 install --upgrade pip && \
    pip3 install cellxgene
# ENTRYPOINT [“cellxgene”]  # Heroku doesn’t work well with ENTRYPOINT
