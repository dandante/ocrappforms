#!/bin/bash

set -e -v


apt-get -qq update
apt-get install -y autoconf automake libtool wget build-essential
apt-get install -y libpng12-dev
apt-get install -y libjpeg62-dev
apt-get install -y libtiff4-dev
apt-get install -y zlib1g-dev
wget http://www.leptonica.org/source/leptonica-1.73.tar.gz -O /tmp/leptonica.tar.gz
tar -xvf /tmp/leptonica.tar.gz
pushd leptonica-1.73 && ./configure && make && make install && popd
wget https://github.com/tesseract-ocr/tesseract/archive/3.04.01.tar.gz -O /tmp/tesseract.tar.gz
tar -xvf /tmp/tesseract.tar.gz
cd tesseract-3.04.01
./autogen.sh && ./configure
LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" make
make install && ldconfig
cd ..
wget https://github.com/tesseract-ocr/tessdata/archive/3.04.00.tar.gz -O /tmp/tessdata.tar.gz
tar -xvf /tmp/tessdata.tar.gz
mkdir -p /usr/local/share/tessdata/
rsync -a tessdata-3.04.00/ /usr/local/share/tessdata

pip3 install Cython Pillow ipython
