# govag

Vagrant based provisioning based on Ubuntu Trusty.
Idea is to have empty Ubuntu Trusty and setup the needed environment to develop Golang based software.

## What does it do?

Currently doing the following:

* download Golang binaries and install them in `/usr/local/go` and add to $PATH
* setup work folder and $GOPATH in ~/work and add ~/work/bin to $PATH
* install git

## How to use?

`vagrant up`
`vagrant ssh`
`go get <...>`

## Currently used versions

* Ubuntu 14.04 / Trusty
* Go 1.5.1
* Git (latest in apt repository)
