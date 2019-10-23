FROM openjdk:8u222-slim

# set environment variables for karaf configurations
ENV KARAF_HOME=/opt/apache-karaf-4.0.10
ENV KARAF_PASSWORD=karaf
ENV FEDORA_BASE_URL=http://localhost:8080/fedora/rest
ENV FEDORA_AUTH_HOST=localhost
ENV FEDORA_ADMIN_USERNAME=fedoraAdmin
ENV FEDORA_ADMIN_PASSWORD=fedoraAdmin
ENV TRIPLEST0RE_BASE_URL=http://localhost:7200
ENV REST_HOST=localhost
ENV JMS_BROKER_URL=tcp://localhost:61616

# add karaf
ADD ./apache-karaf-4.0.10.tar.gz /opt

# add maven repository
ADD ./mvn-repository.tar.gz ${KARAF_HOME}

# copy configurations
COPY ./etc/* ${KARAF_HOME}/etc/

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:${KARAF_HOME}/bin

EXPOSE 1099 44444 8101 8181 9080

CMD [ "karaf", "run"]