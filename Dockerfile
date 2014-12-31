FROM centos

RUN yum install -y tar
RUN curl -o /tmp/hello_world.tar.gz -L https://github.com/alexandrubordei/rustironhelloworld/raw/master/tgz/hello_world.tar.gz
RUN tar -zxf /tmp/hello_world.tar.gz
RUN mv target/hello_world /usr/bin/hello_world

expose 3000

cmd ["/usr/bin/hello_world"]
