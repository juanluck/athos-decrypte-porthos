FROM debian

RUN apt update && \
    apt upgrade -y && \
    apt install -y gpg 

RUN mkdir /keys && \
    mkdir /message

RUN gpg --import /keys/secretAthos.key

CMD gpg --decrypt /message/messagePorthos.txt.gpg 2> /dev/null
