FROM debian

RUN apt update && \
    apt upgrade -y && \
    apt install -y gpg 

RUN mkdir /keys && \
    mkdir /message

######################################################################################	
## Insérez ci-dessous les lignes manquantes pour rendre le dockerfile fonctionnel : ##
##  - Modifier les ??? par les commandes appropriées                                ##
######################################################################################	

???
???

######################################################################################	
##                                     fin                                          ##
######################################################################################	

RUN gpg --import /keys/secretAthos.key

CMD gpg --decrypt /message/messagePorthos.txt.gpg 2> /dev/null
