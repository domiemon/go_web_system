FROM golang

# COPY go_web_system /go-web-system

# WORKDIR /go-web-system

EXPOSE 8080/tcp

ENTRYPOINT go build . && go run main.go