FROM continuumio/miniconda3:latest

RUN conda install -y anaconda-client

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]

ENTRYPOINT ["/entrypoint.sh"]
