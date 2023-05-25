#!/bin/bash
WORKDIR=/tree-of-thought-llm
CONTAINER=tree-of-thought-llm-dev-container
IMAGE=tree-of-thought-llm:dev
sudo docker stop $(sudo docker ps -a -q)  #stop停止所有容器
sudo docker rm $(sudo docker ps -a -q)  #remove删除所有容器
sudo docker run  --name $CONTAINER -it -v $PWD:$WORKDIR -w $WORKDIR $IMAGE /bin/bash
