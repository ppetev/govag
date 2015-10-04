### How to get gorouter sources and build them

```
$ go get -d github.com/cloudfoundry/gorouter
$ cd $GOPATH/src/github.com/cloudfoundry/gorouter
$ go get -v github.com/tools/godep
$ godep restore ./...
$ CGO_ENABLED=0 go build -a -installsuffix cgo -tags netgo
$ go installsuffix
$ cd $GOPATH/bin
```

### How to statically build golang applications

```
$ CGO_ENABLED=0 go build -a -installsuffix cgo -tags netgo
```

### How to install docker

```
$ sudo apt-get update
$ curl -sSL https://get.docker.com/ | sh
```
### Docker build and test

```
$ sudo docker build -t ppetev/gorouter .
$ sudo docker run -it --net host ppetev/gorouter
```
