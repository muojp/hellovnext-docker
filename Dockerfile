FROM muojp/aspnet-docker:latest

RUN apt-get -qqy install git
RUN git clone https://github.com/davidfowl/HelloWorldVNext ~/helloworld
WORKDIR /root/helloworld/src/helloworldweb
RUN kpm restore

EXPOSE 5000
CMD k web
