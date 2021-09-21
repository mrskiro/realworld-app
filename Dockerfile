FROM golang:latest

# RUN apk update && apk add git
RUN mkdir /go/src/realworld-app
WORKDIR /go/src/realworld-app
ADD . /go/src/realworld-app

# COPY go.mod go.sum ./
# RUN go mod download
# RUN go install github.com/cosmtrek/air@latest

# ARG CGO_ENABLED=0
# ARG GOOS=linux
# ARG GOARCH=amd64
# CMD ["air", "-c", ".air.toml"]
# EXPOSE 8080
# CMD ["go", "run", "main.go"]

# RUN go build \
#   -o /go/bin/main \
#   -ldflags '-s -w'
