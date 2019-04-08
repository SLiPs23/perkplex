IMAGE=sperkins/scope
IMAGE_SRC=arnulfosolis/scope-arm
VERSION=d6bbf690
ALL_ARCH='amd64 arm'

# Build ARM64 image here

docker pull $IMAGE_SRC:$VERSION
docker tag $IMAGE_SRC:$VERSION $IMAGE:$VERSION-arm
docker push $IMAGE:$VERSION-arm

docker manifest create --amend $IMAGE:$VERSION `echo $ALL_ARCH | sed -e "s~[^ ]*~$IMAGE:$VERSION\-&~g"`
for arch in $ALL_ARCH; do docker manifest annotate --arch $arch $IMAGE:$VERSION $IMAGE:$VERSION-$arch; done
docker manifest push $IMAGE:$VERSION
