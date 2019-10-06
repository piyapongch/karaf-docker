FROM openjdk:8u222-slim

# set environment variables for karaf configurations
ENV KARAF_HOME=/opt/apache-karaf-4.0.10
ENV KARAF_PASSWORD=karaf
ENV FEDORA_SERVER_URL=http://localhost:8080
ENV FEDORA_AUTH_HOST=localhost
ENV FEDORA_ADMIN_USERNAME=fedoraAdmin
ENV FEDORA_ADMIN_PASSWORD=fedoraAdmin

# add karaf
ADD ./apache-karaf-4.0.10.tar.gz /opt
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/apache-karaf-4.0.10/bin

# copy configurations
COPY ./etc/* ${KARAF_HOME}/etc/

EXPOSE 1099 44444 8101 8181

CMD [ "karaf", "run"]