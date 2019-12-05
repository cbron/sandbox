FROM golang:1.12.1-alpine3.9
RUN apk add --no-cache curl
ENV GOPATH="/go"
RUN ["mkdir", "-p", "/go/src/github.com/rancher/demo"]
COPY * /go/src/github.com/rancher/demo/
WORKDIR /go/src/github.com/rancher/demo
RUN ["go", "build", "-o", "demo"]
CMD ["./demo"]
