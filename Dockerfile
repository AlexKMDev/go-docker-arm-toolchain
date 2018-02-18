FROM golang:1.10-stretch

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc-arm-linux-gnueabihf \
		libc6-dev-armhf-cross \
	&& rm -rf /var/lib/apt/lists/*
