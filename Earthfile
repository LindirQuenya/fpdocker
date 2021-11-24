ARG CURRVERSION="20.04.1-0.4"

# This builds all the leaf images.
all-leaf:
    BUILD ./earthfiles/unity+unity
    BUILD ./earthfiles/flash-plugin+flash-plugin
    BUILD ./earthfiles/flash-sa+flash-sa
    BUILD ./earthfiles/flash-wine+flash-wine

all-trunk:
    BUILD ./earthfiles/+base-save
    BUILD ./earthfiles/+wine-save
    BUILD ./earthfiles/+pipelight-save
    BUILD ./earthfiles/+basilisk-save

build-wine:
    BUILD ./earthfiles/winepatch+wine-builder
