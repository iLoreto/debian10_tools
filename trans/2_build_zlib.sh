cd deps
tar xvfz zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure --prefix=/var/tools/trans/build
make
make install
rm -rf zlib-1.2.11/
cd ..
