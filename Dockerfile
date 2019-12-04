FROM golang:1.13
LABEL maintainer="panjintian1992 <panjintian1992@g163.com>"
WORKDIR ~/go-learn
COPY . .
RUN go get -d -v ./...
RUN go install -v ./...
EXPOSE 8123
CMD ["go-learn"]