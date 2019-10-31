# karaf-docker
Apache Karaf server with Fedora triplestore configurations

## Build docker
```shell
$ docker build -t pcharoen/karaf:4.0.10 .
```

## Push to dockerhub
```shell
$ docker login
$ docker push pcharoen/karaf:4.0.10
```

## Run 
```shell
$ docker-compose up -d
```