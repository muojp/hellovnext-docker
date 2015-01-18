FROM muojp/aspnet-docker:1.0.0-beta2

RUN apt-get -qqy install git
RUN git clone https://github.com/davidfowl/HelloWorldVNext /opt/helloworld
WORKDIR /opt/helloworld/src/helloworldweb
RUN kpm restore

EXPOSE 5000
CMD k web
