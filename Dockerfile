FROM ubuntu
COPY lab2.cpp ./
COPY asprog.s ./
RUN apt-get update
RUN apt-get install -y apt-file
RUN apt-get install -y vim
RUN apt-get install -y gdb
RUN apt-get install -y build-essential
