IMAGE=sperkins/scope
IMAGE_SRC=arnulfosolis/scope-arm64
VERSION=c0b60a16
ALL_ARCH='amd64 arm64'

# Build ARM64 image here

docker pull $IMAGE_SRC:$VERSION
docker tag $IMAGE_SRC:$VERSION $IMAGE:$VERSION-amd64
docker push $IMAGE:$VERSION-amd64

docker manifest create --amend $IMAGE:$VERSION `echo $ALL_ARCH | sed -e "s~[^ ]*~$IMAGE:$VERSION\-&~g"`
for arch in $ALL_ARCH; do docker manifest annotate --arch $arch $IMAGE:$VERSION $IMAGE:$VERSION-$arch; done
docker manifest push $IMAGE:$VERSION
