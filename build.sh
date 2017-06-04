#!/bin/bash
HOME=`pwd`

if [ -d html ]
then
    cd html
    git pull
else
    git clone https://github.com/mfreiholz/iF.SVNAdmin.git html
fi

cd $HOME
docker build --tag="ifsvnadmin:latest" .
