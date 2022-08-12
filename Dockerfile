FROM ubuntu:20.04
RUN apt update -y && apt upgrade -y

RUN apt install -y g++ python3
RUN apt install -y g++ python3 cmake
RUN apt install -y python3-setuptools git
RUN apt install -y qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools
RUN apt install -y qt5-default
RUN apt install -y gir1.2-goocanvas-2.0 python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 python3
RUN apt install -y libprotobuf-dev protobuf-compiler
RUN apt install -y libzmq3-dev

RUN apt install -y curl zip
RUN PROTOC_ZIP=protoc-3.14.0-linux-x86_64.zip & curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/$PROTOC_ZIP & unzip -o $PROTOC_ZIP -d /usr/local bin/protoc & unzip -o $PROTOC_ZIP -d /usr/local 'include/*' & rm -f $PROTOC_ZIP
