#################################################################
# Dockerfile
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM yrzr/go-filecoin:devnet-user

MAINTAINER cheng gong <512543469@qq.com>

ENTRYPOINT ["go-filecoin init --devnet-user --genesisfile=http://user.kittyhawk.wtf:8020/genesis.car"]

CMD ["go-filecoin daemon"] 
