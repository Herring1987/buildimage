# buildimage  ## 因dockerhub不再支持免费的自动构建功能，使用不能使用dockerhub的自动构建功能做拉取国外镜像操作
# Dockerfile文件，用于使dockerhub自动构建国外镜像 
Dockerfile文件，用于使github的action自动构建国外镜像

方式：
在工程的Actions中，添加自动构建的CI脚本，其目录和脚本在.github/workflows/docker-image.yaml中
此CI脚本在push工程的时候自动触发，为达到下载国外镜像只在此工程中进行的目的，需要修改Dockerfile和docker-image.yaml文件，同时要一并提交，触发CI脚本执行
