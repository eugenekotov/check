FROM alpine:3.15

RUN apk add openjdk11
COPY target/DevSecOps-1.0-SNAPSHOT.jar /app.jar
ADD crontab.txt /crontab.txt
RUN /usr/bin/crontab /crontab.txt

CMD ["crond", "-f"]
