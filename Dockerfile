###########################################################################################################################################################
# Dockerfile
# File Author / Maintainer: cheng gong <512543469@qq.com>
# filecoin-docker�氲װ��ʹ�÷���
# 1.��װdocker
# $ curl -fsSL https://get.docker.com -o get-docker.sh
# $ sudo sh get-docker.sh
# $ sudo usermod -aG docker your-user
# 2.����filecoin����
# docker pull cgwyx/filecoin-docker
# 3.���нڵ�����
# docker run -it --rm --restart=always --name filecoin-node-1 -v ~/node-1/.filecoin:/root/.filecoin --entrypoint=/bin/sh cgwyx/filecoin-docker
# 4.��������
# docker exec -it filecoin-user /bin/sh
# 5.�����������г�ʼ���������ػ�����
# go-filecoin init --devnet-user --genesisfile=http://user.kittyhawk.wtf:8020/genesis.car
# go-filecoin daemon
# 6.ͬ�������ڱ�������~/node-1/.filecoin��

#########################################################################################################################################################

FROM yrzr/go-filecoin:devnet-user

MAINTAINER cheng gong <512543469@qq.com>

ENTRYPOINT []

CMD ["/bin/bash"]

