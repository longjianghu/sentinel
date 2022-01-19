FROM openjdk:8-jre-alpine

MAINTAINER Longjianghu <215241062@qq.com>

ARG ver

ENV VERSION=$ver

RUN set -xe \
    && mkdir /data \
    && wget -O /data/app.jar https://github.com/alibaba/Sentinel/releases/download/${VERSION}/sentinel-dashboard-${VERSION}.jar

WORKDIR /data

EXPOSE 8080

CMD ["java","-jar","/data/app.jar"]
