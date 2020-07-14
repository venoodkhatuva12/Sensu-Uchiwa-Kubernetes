FROM venood12/jenkins-sensu-client
#TEst file

MAINTAINER Venood12 vinod.katuwa12@gmail.com

# Basic packages
RUN echo "sensu ALL=(ALL) ALL" >> /etc/sudoers.d/sensu
RUN rm -rvf \
      /tmp/* \
      /var/tmp/*

ENV PATH ${PATH}:/opt/sensu/bin

COPY entrypoint.sh /

COPY ./plugins/* /etc/sensu/plugins/

RUN chown -R sensu /etc/sensu

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
