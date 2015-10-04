#!/bin/bash

# don't install go twice - it is always the same version
if [ ! -e "/usr/local/go/bin/go" ];
then
	wget -q https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz
	sudo tar -C /usr/local -xzf go1.5.1.linux-amd64.tar.gz
	rm -f go1.5.1.linux-amd64.tar.gz
fi

# export PATH=$PATH:/usr/local/go/bin
# export PATH=$PATH:$GOPATH/bin
# sudo echo "PATH=$PATH" > /etc/environment
