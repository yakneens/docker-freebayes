FROM library/centos:latest
RUN yum update && git clone --recursive git://github.com/ekg/freebayes.git && make install
CMD freebayes -version | cowsay