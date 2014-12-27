FROM muojp/aspnet-docker:nightly

RUN apt-get -qqy install git
ONBUILD RUN git clone https://github.com/davidfowl/HelloWorldVNext ~/helloworld
ONBUILD WORKDIR /root/helloworld/src/helloworldweb
ONBUILD RUN kpm restore

EXPOSE 5000
CMD k web
