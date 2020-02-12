# CyberChef Release Version (Alpine linux arm64v8 / amd64)

this Alpine Linux Image contains the release package files from https://github.com/gchq/CyberChef/releases and is served with the busybox httpd daemon

Run

```
$ docker run -p 8080:8080 -d datenfahrt/aarch64-cyberchef:latest
```
Build

```
$ git clone https://github.com/datenfahrt/docker-cyberchef .

# example for aarch64

$ docker build -t mychef -f Dockerfile.aarch64

# with CyberChef Version String

$ docker build --build-arg VERSION=v8.38.0 -t mychef -f Dockerfile.aarch64 .

```

Run

```
$ docker run -p 8080:8080 mychef:latest
```

Browse to http://127.0.0.1:8080

