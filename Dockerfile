FROM golang:alpine
WORKDIR /build
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN go build -o /main 
CMD ["/main"]