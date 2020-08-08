./download_deps.sh
tar xvfz libevent-1.4.11-stable.tar.gz
cd libevent-1.4.11-stable
./configure --prefix=/var/tools/trans/build
make
make install
rm -rf libevent-1.4.11-stable/
cd ..
tar xvfz zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure --prefix=/var/tools/trans/build
make
make install
rm -rf zlib-1.2.11/
cd ..
tar xvfz openssl-1.0.2d.tar.gz
cd openssl-1.0.2d
./config --prefix="/var/tools/trans/build" shared zlib-dynamic -I"/var/tools/trans/build/include" 
make
make install
rm -rf openssl-1.0.2d/
cd ..
tar xvfz curl-7.71.1.tar.gz
cd curl-7.71.1
./configure --prefix="/var/tools/trans/build" --with-zlib="/var/tools/trans/build/" --with-ssl="/var/tools/trans/build"
make
make install
rm -rf curl-1.71.1/
cd ..
tar xjf transmission-2.03.tar.bz2
cd transmission-2.03
./configure --prefix=/var/tools/trans/build/transmission \
 	--disable-gtk --disable-libnotify --disable-mac --disable-wx \
 	--disable-beos --enable-utp --disable-nls --enable-inotify \
 	--enable-lightweight --disable-cli --enable-daemon \
 	--with-zlib=/var/tools/trans/build \
 	PKG_CONFIG=/usr/bin/pkg-config \
 	PKG_CONFIG_PATH=/var/tools/trans/build/lib/pkgconfig \
 	CPPFLAGS=-DTR_EMBEDDED
make
make install
rm -rf transmission-2.03/
cd ..
