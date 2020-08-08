cd deps
tar xvfz libevent-1.4.11-stable.tar.gz
cd libevent-1.4.11-stable
./configure --prefix=/var/tools/trans/build
make
make install
rm -rf libevent-1.4.11-stable/
cd ..
