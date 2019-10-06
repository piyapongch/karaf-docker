FROM apache/karaf:4.2.7

# set environment variables for karaf configurations
ENV KARAF_HOME=/opt/apache-karaf
ENV KARAF_PASSWORD=karaf
ENV FEDORA_SERVER_URL=http://localhost:8080
ENV FEDORA_ADMIN_USERNAME=fedoraAdmin
ENV FEDORA_ADMIN_PASSWORD=fedoraAdmin


# copy configurations
COPY ./etc/* ${KARAF_HOME}/etc/
