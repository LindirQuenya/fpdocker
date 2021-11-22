FROM debian:bullseye

# Environment vairable ensures that apt doesn't prompt us for anything.
ENV DEBIAN_FRONTEND=noninteractive

# Install wget and gpg so that we can add an apt key.
RUN apt-get update
RUN apt-get install --yes wget gnupg

# Add the Wine repo and key, for more recent libvkd3d-dev
RUN dpkg --add-architecture i386 
RUN wget -qO- https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
RUN echo deb https://dl.winehq.org/wine-builds/ubuntu/ focal main >> /etc/apt/sources.list.d/wine.list
RUN echo deb-src https://dl.winehq.org/wine-builds/ubuntu/ focal main >> /etc/apt/sources.list.d/wine.list

# Re-update the sources, and install dependencies.
RUN apt-get update
# Build-dep was installing extra stuff, so we're just manually specifying this now.
RUN apt-get install --yes git gcc-mingw-w64 libasound2-dev libpulse-dev libdbus-1-dev libfontconfig-dev libgnutls28-dev libjpeg62-turbo-dev libpng-dev libtiff-dev libgl-dev libunwind-dev libx11-dev libxml2-dev libxslt1-dev libfaudio-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev libmpg123-dev libosmesa6-dev libsdl2-dev libudev-dev libvkd3d-dev libvulkan-dev libusb-1.0-0-dev libgsm1-dev liblcms2-dev bison flex autoconf make build-essential libxcomposite-dev libjxr-dev

# Note that for both of these, I'm using --depth 1, which disables fetching history.
# This is intentional, as it significantly reduces the clone times, and we don't need history anyway.
# Grab the wine sources for v6.19.
RUN git clone --depth 1 --branch wine-6.19 git://source.winehq.org/git/wine.git /usr/src/wine-source
# Also get wine-staging v6.19
RUN git clone --depth 1 --branch v6.19 git://github.com/wine-staging/wine-staging.git /usr/src/wine-staging

# Apply the staging patches.
WORKDIR /usr/src/wine-staging/patches
RUN ./patchinstall.sh DESTDIR=/usr/src/wine-source --all

# Copy our custom patch over.
COPY childwindow-6.19-staging.patch /usr/src/childwindow.patch

# Apply the patch.
WORKDIR /usr/src/wine-source
RUN git apply /usr/src/childwindow.patch

# Configure and build the 64-bit wine.
WORKDIR /usr/src/wine64
RUN /usr/src/wine-source/configure --enable-win64 --prefix=/opt/wine-staging
RUN make -j4

# Install 32-bit dependencies.
RUN apt-get install --yes libasound2-dev:i386 libpulse-dev:i386 libdbus-1-dev:i386 libfontconfig-dev:i386 libgnutls28-dev:i386 libjpeg62-turbo-dev:i386 libpng-dev:i386 libtiff-dev:i386 libgl-dev:i386 libunwind-dev:i386 libx11-dev:i386 libxml2-dev:i386 libxslt1-dev:i386 libfaudio-dev:i386 libgstreamer-plugins-base1.0-dev:i386 libgstreamer1.0-dev:i386 libmpg123-dev:i386 libosmesa6-dev:i386 libsdl2-dev:i386 libudev-dev:i386 libvkd3d-dev:i386 libvulkan-dev:i386 libusb-1.0-0-dev:i386 libgsm1-dev:i386 liblcms2-dev:i386 libxcomposite-dev:i386 libjxr-dev:i386 gcc-multilib pkg-config:i386
# Build WoW64 (32-bit) wine.
WORKDIR /usr/src/wine32
RUN PKG_CONFIG_PATH=/usr/lib/pkgconfig /usr/src/wine-source/configure --with-wine64=/usr/src/wine64 --prefix=/opt/wine-staging
make -j4
