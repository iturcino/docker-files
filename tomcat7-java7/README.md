# Tomcat 7 on Java 7

This image includes Tomcat 7 installation and deployment. It is based on inovatrend/java7, check there what else is installed on it.

Tomcat runs as runit service. It is installed in /opt/tomcat dir, and includes Tomcat Manager for deployment of webapps.

To access Tomcat Manager:

Username: admin
Password: can be set when running docker container by passing TOMCAT_PASS env. veriable. Otherwise random password is generated on startup.
Password can be seen using command:

```sh
docker logs <container_id>
```

In log entry similar to this will appear:

```sh
========================================================================
You can now configure to this Tomcat server using:

    admin:6dD6x4f4IVKT

========================================================================
```

### Pulling image

A prebuilt container is available on Docker Hub, you can get it with following command

docker pull inovatrend/tomcat7-java7

### Usage

To test run it, run following command:

```sh
docker run --rm -P -t -i inovatrend/tomcat7-java7 /sbin/my_init -- bash -l
```

To run it as daemon, you can use command similar to this one:

```sh
docker run -d -p 49154:8080 --name app_name -e "JAVA_OPTS=-Dsome.property=value -Xmx1024m" -e "TOMCAT_PASS=somePass" inovatrend/tomcat7-java7
```



