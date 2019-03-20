#################################################################
# Dockerfile
# File Author / Maintainer: cheng gong <512543469@qq.com>
#################################################################

FROM yrzr/go-filecoin:devnet-user

MAINTAINER cheng gong <512543469@qq.com>

ENTRYPOINT ["/bin/sh"]

CMD ["go-filecoin daemon"] 
