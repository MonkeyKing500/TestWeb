FROM jdk8:8u333

MAINTAINER sxh

ENV JAVA_OPTS="-Xms128m -Xmx128m -Djava.security.egd=file:/dev/./urandom"

RUN mkdir -p /test-web

WORKDIR /test-web

EXPOSE 8099

ADD ./target/test-web.jar ./

CMD java $JAVA_OPTS -jar test-web.jar
