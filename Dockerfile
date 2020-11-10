FROM adoptopenjdk:11-hotspot-focal

RUN mkdir /app
COPY Main.java /app
WORKDIR /app

RUN javac Main.java

# 25 is a standard default value for MaxRAMPercentage option on JVM. We made this configurable for more effect mem usage on mesos deployments
ENV MAX_RAM_PERCENTAGE 25

CMD java -cp /app -Xlog:gc=debug -XX:MaxRAMPercentage=${MAX_RAM_PERCENTAGE} -XshowSettings:vm -XX:+PrintFlagsFinal Main
