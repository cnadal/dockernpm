# dockernpm

Conteneur docker embarquant, sous une distribution alpine, npm.


-- Testé sous windows 10 pro

1 - placez-vous dans un dossier de travail
2 - créer un fichier dockerfile avec nano et nmp + node (npm dépend de node)

FROM alpine:latest
RUN mkdir -p /root/npm
RUN apk --no-cache add nano
RUN apk add --update npm
WORKDIR /root/npm


3 - "Build" votre image 
docker build . -t linuxnpm

4 - exécutez le conteneur npm avec synchronisation entre dossier npm (du dossier de travail) et /root/nmp dans le conteneur.

docker run -it  --volume ${PWD}//npm:/root/npm linuxnpm

5 - pour sortir de linuxnpm :

exit

6 - pour relancer npm : 
depuis le dossier de travail
docker run -it  --volume ${PWD}//npm:/root/npm linuxnpm

7 - pensez à versionner votre code + config docker ...



