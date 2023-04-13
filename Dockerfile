FROM debian:testing-slim

RUN apt update && apt install -y openjdk-17-jre && apt clean && rm -rf /var/lib/apt/lists/*

COPY data/minecraft_server.1.19.2.jar /mc/minecraft_server.1.19.2.jar
COPY data/eula.txt /mc/eula.txt

EXPOSE 25565/tcp

VOLUME ["/mc"]

WORKDIR /mc

ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.19.2.jar", "nogui"]
