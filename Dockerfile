FROM library/centos:latest
RUN yum update -y 
RUN yum install -y "Development Tools" kernel-headers kernel-devel git gcc gcc-c++ make cmake python-devel python-pip zlib-devel
RUN git clone --recursive git://github.com/ekg/freebayes.git && cd /freebayes && make
CMD /freebayes/bin/freebayes -version | cowsay