#This assumes the container is built from the root repo directory. Read the README!!!!
FROM ubuntu:18.04
USER root

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install -y python3.7

RUN apt-get update && apt-get install -y make cmake python3-pip \
                                                   git \
                                                   libboost-all-dev


#RUN pip3 install clang-format-all

RUN apt-get install -y clang-format-10
RUN ln -s  /usr/bin/clang-format-10 /usr/bin/clang-format

#This assumes the container is built from the root repo directory. Read the README!!!!
COPY . /root/wt-example
WORKDIR /root/wt-example
RUN make -j8 build
CMD make run
