FROM ubuntu:15.04
RUN apt-get install -y curl tar libssl1.0.0
RUN curl -o /tmp/hello_world.tar.gz -L https://github.com/alexandrubordei/rustironhelloworld/raw/master/tgz/hello_world.tar.gz
RUN tar -zxf /tmp/hello_world.tar.gz
RUN mv target/hello_world /usr/bin/hello_world

expose 3000

cmd ["/usr/bin/hello_world"]
