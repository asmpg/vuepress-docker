#!/bin/ash

mkdir -p ~/webhook
# mkdir -p ~/go/src/github.com/satori
# git clone --branch v1.2.0 https://github.com/satori/go.uuid.git ~/go/src/github.com/satori
curl -sL https://github.com/adnanh/webhook/archive/2.7.0.tar.gz | tar -xvz --strip-components=1 -C ~/webhook
cd ~/webhook
go get -d
# git -C ~/go/src/github.com/satori/go.uuid checkout v1.2.0
go build -o /usr/local/bin/webhook