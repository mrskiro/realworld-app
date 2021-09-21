FROM golang:latest

RUN mkdir /go/src/realworld-app
WORKDIR /go/src/realworld-app
COPY . /go/src/realworld-app

# COPY go.mod go.sum ./
RUN go mod download
RUN go install github.com/cosmtrek/air@latest

# ARG CGO_ENABLED=0
# ARG GOOS=linux
# ARG GOARCH=amd64
CMD ["air", "-c", ".air.toml"]

