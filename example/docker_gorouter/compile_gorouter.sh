#!/bin/bash


#install gnats

go get github.com/apcera/gnatsd

#build gorouter

go get -d -v github.com/cloudfoundry/gorouter
cd $GOPATH/src/github.com/cloudfoundry/gorouter
go get -v github.com/tools/godep
godep restore ./...
export CGO_ENABLED=0
go build -a -installsuffix cgo -tags netgo
