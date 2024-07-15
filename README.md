# Requirements

- Docker

## Clone the repo

```
git clone https://github.com/cdeletre/bitsybox-aarch64.git
```

## Build the docker image

```
docker build --platform=linux/arm64 -t bitsybox-aarch64 .
```

## Build the port

```
docker run --rm -v ${PWD}:/bitsybox-aarch64 bitsybox-aarch64 /bitsybox-aarch64/build.sh
```