# Apache Web Server Docker image

> Docker image based on CentOS 7.5

Quick start:

```
docker run \
  -d \
  -p 8080:80 \
  giabar/gb-httpd
```

Save data in a volume:

```
docker run \
  -d \
  -p 8080:80 \
  -v httpd:/var/www/html \
  giabar/gb-httpd
```
