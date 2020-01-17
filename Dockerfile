FROM ubuntu:latest

RUN apt -y update
RUN apt -y install python3
RUN apt -y install python3-pip

RUN pip3 install pillow beautifulsoup4 requests

COPY * /opt/manga-script/

RUN chmod -R 777 /opt/manga-script/*

RUN echo "PATH=/opt/manga-script/:$PATH" >> ~/.bashrc

