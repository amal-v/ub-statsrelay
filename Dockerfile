FROM ubuntu:18.04

RUN apt-get update && apt-get install automake pkg-config libev-dev libyaml-dev git -y

COPY . /statsrelay

WORKDIR statsrelay

RUN ./autogen.sh

RUN ./configure

RUN make clean && make 

RUN make install

CMD ["statsrelay" "--config=" "/path/to/statsrelay.yaml"]

 

