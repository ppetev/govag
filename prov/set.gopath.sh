export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/work
export PATH=$PATH:$GOPATH/bin

# don't make work folder twice
if [ ! -e "./work" ];
then
	mkdir work
fi

