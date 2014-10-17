# Oracle Java 8 image

This image is built to include latest version of Oracle JDK 8. It is based on [phusion/baseimage](https://registry.hub.docker.com/u/phusion/baseimage/) , so it inherts all goodies from it.

### Pulling image

A prebuilt container is available on Docker Hub, you can get it with following command

```sh
docker pull iturcino/java8
```

### Usage

To test run it, run following command:

```sh
docker run --rm -P -t -i iturcino/java8 /sbin/my_init -- bash -l
```