### How to get gorouter sources and build them

```
go get -d github.com/cloudfoundry/gorouter
cd $GOPATH/src/github.com/cloudfoundry/gorouter
go get -v github.com/tools/godep
godep restore ./...
CGO_ENABLED=0 go build -a -installsuffix cgo -tags netgo
go installsuffix
cd $GOPATH/bin
```

### How to statically build golang applications

`CGO_ENABLED=0 go build -a -installsuffix cgo -tags netgo`
