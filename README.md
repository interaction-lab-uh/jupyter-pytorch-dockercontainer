# jupyter-pytorch-dockercontainer

dockerでpytorch + GPU環境を構築するためのdockerfileです

```
$sudo docker build . --tag ktaskn/jupyter-pytorch
$sudo docker run -it --gpus all -v ${PWD}:/workspace -p 8888:8888 --shm-size 32G --name ml ktaskn/jupyter-pytorch
```
