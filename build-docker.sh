export BUILDKIT_PROGRESS=tty

echo "Building ruvb for 3.12"
docker build -t ruvb3.12 . -f Dockerfile-312

echo "Building ruvb for 3.13"
docker build -t ruvb3.13 . -f Dockerfile-313
