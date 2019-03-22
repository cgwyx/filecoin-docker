# filecoin-docker
Docker of go-filecoin
# filecoin-docker版安装及使用方法  
# 1.安装docker  
# $ curl -fsSL https://get.docker.com -o get-docker.sh  
# $ sudo sh get-docker.sh  
# $ sudo usermod -aG docker your-user  
# 2.下载filecoin镜像  
# docker pull cgwyx/filecoin-docker  
# 3.运行节点容器  
# docker run -it --restart=always --name filecoin-node-1 -v ~/node-1/.filecoin:/root/.filecoin cgwyx/filecoin-docker /bin/sh  
# 4.在容器内运行初始化及启动守护进程  
# go-filecoin init --devnet-user --genesisfile=http://user.kittyhawk.wtf:8020/genesis.car  
# go-filecoin daemon  
# 5.运行其他filecoin命令  
# docker exec -it filecoin-node-1 go-filecoin  
# docker exec -it filecoin-node-1 go-filecoin config heartbeat.nickname "yournode"  
# docker exec -it filecoin-node-1 go-filecoin config heartbeat.nickname  
# docker exec -it filecoin-node-1 go-filecoin config heartbeat.beatTarget "/dns4/stats-infra.kittyhawk.wtf/tcp/8080/ipfsQmUWmZnpZb6xFryNDeNU7KcJ1Af5oHy7fB9npU67sseEjR"  
# docker exec -it filecoin-node-1 go-filecoin wallet addrs ls  
# 5.重新进入容器  
# docker exec -it filecoin-node-1 /bin/sh  
# 6.同步数据在本地主机~/node-1/.filecoin内  
