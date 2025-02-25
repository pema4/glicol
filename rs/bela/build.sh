set -e
NAME="glicol"

export PATH=$PATH:`pwd`/arm-bela-linux-gnueabihf/bin
RUSTFLAGS="-C target-cpu=cortex-a8" cargo build --target=armv7-unknown-linux-gnueabihf --example $NAME
scp target/armv7-unknown-linux-gnueabihf/debug/examples/$NAME root@bela.local:~
scp hello.glicol root@bela.local:~
ssh root@bela.local