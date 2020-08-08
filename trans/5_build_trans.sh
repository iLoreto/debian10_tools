cd deps
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
