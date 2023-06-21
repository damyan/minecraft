FROM debian:testing-slim

RUN apt update && apt install -y openjdk-17-jre && apt clean && rm -rf /var/lib/apt/lists/*

RUN adduser --uid 5001 --disabled-password --gecos "" mc

COPY --chown=mc:mc data/minecraft_server.1.19.2.jar /mc/minecraft_server.1.19.2.jar
COPY --chown=mc:mc data/eula.txt /mc/eula.txt

EXPOSE 25565/tcp
EXPOSE 25565/udp

VOLUME ["/mc"]

WORKDIR /mc

USER mc:mc

ENTRYPOINT ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.1.19.2.jar", "nogui"]
