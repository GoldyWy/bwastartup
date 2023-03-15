# syntax=docker/dockerfile:1

FROM golang:1.16-alpine

WORKDIR /app

# COPY /Data/Source/Jenkins/bwastartup ./
COPY ./ ./
RUN go mod download

RUN go build -o /docker-gs-ping

EXPOSE 30000

CMD [ "/docker-gs-ping" ]