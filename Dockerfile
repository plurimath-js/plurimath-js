FROM fedora:39

RUN dnf -y install ruby gcc gcc-c++ ruby-devel nodejs nodejs-npm git wget make rubygem-bundler libyaml-devel && dnf clean all

RUN cd /tmp && wget 'http://www.colm.net/files/ragel/ragel-6.10.tar.gz' && tar -zxvf ./ragel-6.10.tar.gz && cd ./ragel-6.10 && ./configure && make && make install && rm -rf /tmp/ragel-6.10*

WORKDIR /srv
