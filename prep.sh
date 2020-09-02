#!/bin/sh

mkdir $HOME/go
export GOPATH="$HOME/go"

git clone https://github.com/josenk/terraform-provider-esxi $GOPATH/src/github.com/terraform-providers/terraform-provider-esxi

go get -u -v golang.org/x/crypto/ssh
go get -u -v github.com/hashicorp/terraform
go get -u -v github.com/josenk/terraform-provider-esxi

cd $GOPATH/src/github.com/josenk/terraform-provider-esxi
# CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-w -extldflags "-static"' -o terraform-provider-esxi_`cat version`
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -a -ldflags '-w -extldflags "-static"' -o terraform-provider-esxi_`cat version`

sudo cp terraform-provider-esxi_`cat version` /usr/local/bin
sudo cp terraform-provider-esxi_`cat version`  ~/.terraform.d/plugins/

wget https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-10.5.0-amd64-netinst.iso
# take this file and prepare a vm in esxi call it deb for terraform to use a base image