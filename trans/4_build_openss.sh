cd deps
tar xvfz openssl-1.0.2d.tar.gz
cd openssl-1.0.2d
./config --prefix="/var/tools/trans/build" shared zlib-dynamic -I"/var/tools/trans/build/include" 
make
make install
rm -rf openssl-1.0.2d/
cd ..

cd deps
tar xvfz curl-7.71.1.tar.gz
cd curl-7.71.1
./configure --prefix="/var/tools/trans/build" --with-zlib="/var/tools/trans/build/" --with-ssl="/var/tools/trans/build"
make
make install
rm -rf curl-1.71.1/
cd ..