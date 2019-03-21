###########################################################################################################################################################
# Dockerfile
# File Author / Maintainer: cheng gong <512543469@qq.com>
# filecoin-docker版安装及使用方法
# 1.安装docker
# $ curl -fsSL https://get.docker.com -o get-docker.sh
# $ sudo sh get-docker.sh
# $ sudo usermod -aG docker your-user
# 2.下载filecoin镜像
# docker pull cgwyx/filecoin-docker
# 3.运行节点容器
# docker run -it --rm --restart=always --name filecoin-node-1 -v ~/node-1/.filecoin:/root/.filecoin --entrypoint=/bin/sh cgwyx/filecoin-docker
# 4.进入容器
# docker exec -it filecoin-user /bin/sh
# 5.在容器内运行初始化及启动守护进程
# go-filecoin init --devnet-user --genesisfile=http://user.kittyhawk.wtf:8020/genesis.car
# go-filecoin daemon
# 6.同步数据在本地主机~/node-1/.filecoin内

#########################################################################################################################################################

FROM yrzr/go-filecoin:devnet-user

MAINTAINER cheng gong <512543469@qq.com>

ENTRYPOINT []

CMD ["/usr/local/bin/go-filecoin"]

