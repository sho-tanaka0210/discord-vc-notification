FROM golang:latest

ENV TOKEN=token \
  POST_CHANNEL_ID=id

RUN apt-get update && \ 
  go get github.com/bwmarrin/discordgo && \
  go get -u github.com/jinzhu/gorm && \
  go get github.com/lib/pq

WORKDIR /bot
