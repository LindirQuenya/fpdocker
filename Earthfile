ARG CURRVERSION="20.04.1-0.4"

# This builds all the leaf images.
all-leaf:
    BUILD ./earthfiles/unity+unity5x
    BUILD ./earthfiles/flash-plugin+flash32.0.0.330
    BUILD ./earthfiles/flash-plugin+flash11.2.202.644
    BUILD ./earthfiles/flash-sa+flash-sa32.0.0.330
    BUILD ./earthfiles/flash-sa+flash-sa11.2.202.644

all-trunk:
    BUILD ./earthfiles/+base-save
    BUILD ./earthfiles/+wine-save
    BUILD ./earthfiles/+pipelight-save
    BUILD ./earthfiles/+basilisk-save
