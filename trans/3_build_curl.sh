cd deps
tar xvfz curl-7.71.1.tar.gz
cd curl-7.71.1
./configure --prefix="/var/tools/trans/build" --with-zlib="/var/tools/trans/build/" --with-ssl="/var/tools/trans/build"
make
make install
rm -rf curl-1.71.1/
cd ..
