set -ex

docker run -it --rm \
 --cap-add=SYS_ADMIN \
 -v `realpath .`:/tmp/openssl \
 fedora:39 \
 sh -e -x -c \
"dnf install -y fedora-packager
cd /tmp/openssl
fedpkg --name openssl --release f39 mockbuild || sh"
