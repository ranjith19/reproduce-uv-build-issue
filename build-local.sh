export BUILDKIT_PROGRESS=tty


build(){
    uv cache clean
    echo "Building ruvb for 3.$1"
    uv venv v3$1 --python 3.$1 && source v3$1/bin/activate && uv pip install --no-cache -r requirements.txt
}


time build 12
time build 13


