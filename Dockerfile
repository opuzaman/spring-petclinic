# openjdk 8
FROM openjdk:8u191-jre-alpine3.8

ARG JAR_FILE

ENV JAVA_OPTS=""
ENV RUN_MODE=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar $RUN_MODE" ]

COPY target/${JAR_FILE} app.jar
RUN sh -c 'touch /app.jar'
