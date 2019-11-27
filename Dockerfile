FROM golang

RUN mkdir /go-web-system

COPY . /go-web-system/

RUN ls -ag /go-web-system

RUN ls -ag /go-web-system/static

RUN ls -ag /go-web-system/templates

RUN ls -ag /go-web-system/ecs

# COPY go_web_system /go-web-system

WORKDIR /go-web-system

EXPOSE 8080/tcp

ENTRYPOINT pwd && ls -ag && go build . && go run main.go