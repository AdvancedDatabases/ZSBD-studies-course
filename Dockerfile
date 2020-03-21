FROM daggerok/oracle:12.1.0.2-se2

USER root
RUN yum install -y git autotools
RUN yum install -y autoconf automake

WORKDIR /home
RUN git clone https://github.com/ltratt/multitime.git

RUN cd multitime \
	&& make -f Makefile.bootstrap \
    && ./configure \
    && make install

USER oracle
RUN mkdir /home/oracle/benchmark
WORKDIR /home/oracle/benchmark
