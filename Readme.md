# Difference in uv build times 

Here is the formatted data in a table:

| **Environment**          | **Python 3.12**          | **Python 3.13**          |
|---------------------------|--------------------------|--------------------------|
| **Docker Build Time** | 7.6 seconds             | 83 seconds              |
| **General Execution Time**    | Less than 5 seconds     | More than 30 seconds     |


# Test


```
bash build-docker.sh
```

```
bash build-local.sh
```


# Logs

## In docker



```
$ bash build.sh


Building ruvb for 3.12
[+] Building 8.7s (8/8) FINISHED                                                                                                                                                                                                                                 docker:default
 => [internal] load build definition from Dockerfile-312                                                                                                                                                                                                                   0.0s
 => => transferring dockerfile: 256B                                                                                                                                                                                                                                       0.0s
 => [internal] load metadata for ghcr.io/astral-sh/uv:python3.12-bookworm                                                                                                                                                                                                  0.0s
 => [internal] load .dockerignore                                                                                                                                                                                                                                          0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                            0.0s
 => [internal] load build context                                                                                                                                                                                                                                          0.0s
 => => transferring context: 75B                                                                                                                                                                                                                                           0.0s
 => [1/3] FROM ghcr.io/astral-sh/uv:python3.12-bookworm                                                                                                                                                                                                                    0.0s
 => CACHED [2/3] COPY requirements.txt ./                                                                                                                                                                                                                                  0.0s
 => [3/3] RUN uv --version && uv venv /opt/venv &&  uv pip install -r requirements.txt                                                                                                                                                                                     7.6s
 => exporting to image                                                                                                                                                                                                                                                     1.1s
 => => exporting layers                                                                                                                                                                                                                                                    1.1s
 => => writing image sha256:df01c35779cbc4a7cca97fec16e1cff70c301755915f8661e6f085a2ea4b5351                                                                                                                                                                               0.0s
 => => naming to docker.io/library/ruvb3.12                                                                                                                                                                                                                                0.0s
Building ruvb for 3.13
[+] Building 86.4s (8/8) FINISHED                                                                                                                                                                                                                                docker:default
 => [internal] load build definition from Dockerfile-313                                                                                                                                                                                                                   0.0s
 => => transferring dockerfile: 257B                                                                                                                                                                                                                                       0.0s
 => [internal] load metadata for ghcr.io/astral-sh/uv:python3.13-bookworm                                                                                                                                                                                                  0.4s
 => [internal] load .dockerignore                                                                                                                                                                                                                                          0.0s
 => => transferring context: 2B                                                                                                                                                                                                                                            0.0s
 => [internal] load build context                                                                                                                                                                                                                                          0.0s
 => => transferring context: 75B                                                                                                                                                                                                                                           0.0s
 => [1/3] FROM ghcr.io/astral-sh/uv:python3.13-bookworm@sha256:14b85fb77d65578c4e559e32971458a03edd70f0f9fddc994796f11d30edbaa3                                                                                                                                            0.0s
 => CACHED [2/3] COPY requirements.txt ./                                                                                                                                                                                                                                  0.0s
 => [3/3] RUN uv --version && uv venv /opt/venv &&  uv pip install -r requirements.txt                                                                                                                                                                                    83.3s
 => exporting to image                                                                                                                                                                                                                                                     2.7s
 => => exporting layers                                                                                                                                                                                                                                                    2.7s
 => => writing image sha256:a0d465a88e67a4d4b3a795c4ba5991745542f3edc53fe08a42daf13d9b9246c6                                                                                                                                                                               0.0s
 => => naming to docker.io/library/ruvb3.13                                                                                                                                                                                                                                0.0
 ````


 ## Outside of docker


```
$ bash build-local.sh

Building ruvb for 3.12
Using CPython 3.12.8 interpreter at: /opt/homebrew/opt/python@3.12/bin/python3.12
Creating virtual environment at: v312
Activate with: source v312/bin/activate
Using Python 3.12.8 environment at: v312
Resolved 122 packages in 787ms
   Built psycopg2==2.9.10
Prepared 5 packages in 2.85s
Installed 122 packages in 380ms



uilding ruvb for 3.13
Using CPython 3.13.1 interpreter at: /opt/homebrew/opt/python@3.13/bin/python3.13
Creating virtual environment at: v313
Activate with: source v313/bin/activate
Using Python 3.13.1 environment at: v313
Resolved 122 packages in 2.03s
   Built stytch==7.7.3
   Built py-xid==0.3.0
   Built markupsafe==2.1.0
   Built psycopg2==2.9.10
   Built numpy==1.26.4
Prepared 122 packages in 28.55s
Installed 122 packages in 190ms


```


