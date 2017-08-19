### Compiling using Docker image

```bash
docker run -it --rm \
-v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage \
-e GOOS=linux -e GOARCH=arm -e CGO_ENABLED=1 \
-e CC=arm-linux-gnueabihf-gcc anakros/goarm \
go build -o binary-armhf-linux

# or in one line
docker run -it --rm -v "$PWD":/go/src/myrepo/mypackage -w /go/src/myrepo/mypackage -e GOOS=linux -e GOARCH=arm -e CGO_ENABLED=1 -e CC=arm-linux-gnueabihf-gcc anakros/goarm go build -o binary-armhf-linux
```
