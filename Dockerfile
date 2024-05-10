FROM golang:1.21.6
WORKDIR /go/src/github.com/heizenrader/test-ecs
EXPOSE 80
COPY .gitconfig /root/.gitconfig
COPY . .
RUN go mod download
RUN go install github.com/ysmood/kit/cmd/guard@v0.25.11
RUN go install github.com/heizenrader/test-ecs
CMD test-ecs