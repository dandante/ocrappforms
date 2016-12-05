# python3-imaging not available on 16.04(?)
FROM ubuntu:14.04

#RUN apt-get -y update && apt-get install -y tesseract-ocr python3-imaging python3-pip python3-skimage libtesseract-dev libleptonica-dev pkg-config Cython3

#RUN pip3 install pytesseract ipython tesserwrap

# don't install cython3 via apt-get and instead do:
# pip3 install Cython
# (but this doesn't work either, yet)

# RUN pip3 install tesserocr
#
#
# RUN sudo apt-get -qq update
# RUN sudo apt-get install -y autoconf automake libtool
# RUN sudo apt-get install -y libpng12-dev
# RUN sudo apt-get install -y libjpeg62-dev
# RUN sudo apt-get install -y libtiff4-dev
# RUN sudo apt-get install -y zlib1g-dev
# RUN sudo apt-get install -y wget build-essential
# RUN wget http://www.leptonica.org/source/leptonica-1.73.tar.gz -O /tmp/leptonica.tar.gz
# RUN tar -xvf /tmp/leptonica.tar.gz
# RUN cd leptonica-1.73 && ./configure && make && sudo make install && cd ..
# RUN wget https://github.com/tesseract-ocr/tesseract/archive/3.04.01.tar.gz -O /tmp/tesseract.tar.gz
# RUN tar -xvf /tmp/tesseract.tar.gz
# RUN cd tesseract-3.04.01
# #RUN bash -c ./autogen.sh && bash -c ./configure
# RUN echo $PWD
# RUN ["/bin/bash", "-c", "./autogen.sh"]
# RUN ["/bin/bash", "-c", "./configure"]
# RUN LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" make
# RUN sudo make install && sudo ldconfig
# RUN cd ..
# RUN wget https://github.com/tesseract-ocr/tessdata/archive/3.04.00.tar.gz -O /tmp/tessdata.tar.gz
# RUN tar -xvf /tmp/tessdata.tar.gz
# RUN sudo mkdir -p /usr/local/share/tessdata/
# RUN sudo rsync -a tessdata-3.04.00/ /usr/local/share/tessdata
#
# RUN pip3 install Cython Pillow ipython


ADD install.sh /
RUN /install.sh
