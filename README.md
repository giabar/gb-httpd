# Apache Web Server Docker image

> Docker image based on CentOS 7.5

## Try online

You can try that online! Click the below button:

[![Try in PWD](https://raw.githubusercontent.com/play-with-docker/stacks/master/assets/images/button.png)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/giabar/gb-httpd-centos/master/docker-compose.yml)


## Quick start:

```
docker run \
  -d \
  -p 8080:80 \
  giabar/gb-httpd-centos
```

## Save data in a volume:

```
docker run \
  -d \
  -p 8080:80 \
  -v httpd:/var/www/html \
  giabar/gb-httpd-centos
```
