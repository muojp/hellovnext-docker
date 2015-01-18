FROM muojp/aspnet-docker:nightly

RUN apt-get -qqy install git
ONBUILD RUN git clone https://github.com/davidfowl/HelloWorldVNext /opt/helloworld

ENV HOME /root
RUN echo 'source /opt/kre/kvm/kvm.sh' >> /root/.bashrc

ONBUILD WORKDIR /opt/helloworld/src/helloworldweb
ONBUILD RUN kpm restore

EXPOSE 5000
CMD k web
