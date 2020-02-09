FROM alpine:latest

ENV ADMIN_USERNAME=admin \
    ADMIN_PASSWORD=Redstone

WORKDIR /opt
RUN apk update -y && apk install curl -y
RUN curl -sSfL https://download.cuberite.org | sh && mv Server Cuberite
WORKDIR /opt/Cuberite

CMD [ "./Cuberite" ]
EXPOSE 25565 8080