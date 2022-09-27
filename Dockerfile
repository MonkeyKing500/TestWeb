FROM jdk8:8u333

MAINTAINER sxh

ENV JAVA_OPTS="-Xms128m -Xmx128m -Djava.security.egd=file:/dev/./urandom"

RUN mkdir -p /test-web

WORKDIR /test-web

EXPOSE 4040

ADD ./target/test-web.jar ./

CMD java $JAVA_OPTS -jar TestWeb-0.0.1-SNAPSHOT.jar
