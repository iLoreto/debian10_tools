wget http://monkey.org/~provos/libevent-1.4.11-stable.tar.gz
tar xvfz libevent-1.4.11-stable.tar.gz
cd libevent-1.4.11-stable
./configure --prefix=/var/tools/trans/build
make
make install
rm -rf lib*
cd ..
#wget http://zlib.net/zlib-1.2.11.tar.gz
tar xvfz zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure --prefix=/var/tools/trans/build
make
make install
rm -rf zlib*
cd ..
#wget http://openssl.org/source/openssl-1.0.2d.tar.gz
tar xvfz openssl-1.0.2d.tar.gz
cd openssl-1.0.2d
./config --prefix="/var/tools/trans/build" shared zlib-dynamic -I"/var/tools/trans/build/include" 
make
make install
rm -rf open*
cd ..
#wget http://curl.haxx.se/download/curl-7.71.1.tar.gz
tar xvfz curl-7.71.1.tar.gz
cd curl-7.71.1
./configure --prefix="/var/tools/trans/build" --with-zlib="/var/tools/trans/build/" --with-ssl="/var/tools/trans/build"
make
make install
rm -rf curl*
cd ..
#wget https://github.com/transmission/transmission-releases/raw/master/transmission-2.03.tar.bz2
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
rm -rf trans*
cd ..
