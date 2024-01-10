# Installation
Docker buildkit is required for multi-arch builds. Unless integrated in docker already, install it:
```bash
mkdir -p ~/.docker/cli-plugins
wget https://github.com/docker/buildx/releases/download/${version}/buildx-v{version}.linux-$arch -O ~/.docker/cli-plugins/docker-buildx
chmod a+x ~/.docker/cli-plugins/docker-build
docker buildx create --use
```

# Build and Push
Build and push the multi-arch image
```bash
export VERSION=1.ab.c
docker buildx build --platform linux/amd64 --platform linux/arm64 --push . -t damyanyordanov/minecraft-java:$VERSION -f Dockerfile-$VERSION
```

# Clone repo and un minecraft
```bash
git clone git@github.com:damyan/minecraft.git mc
cd mc
# adjust image version, if changed
docker-compose up
```

