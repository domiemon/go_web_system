FROM golang

RUN mkdir /go-web-system

COPY . /go-web-system/

WORKDIR /go-web-system

EXPOSE 8080/tcp

ENTRYPOINT pwd && ls -ag && go build . && go run main.go