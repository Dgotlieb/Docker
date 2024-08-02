## Docker

#### Setup
``` bash
$ https://github.com/Dgotlieb/Docker.git
$ cd Docker
```

#### Build an image
``` bash
$ docker build -t <REPLACE_WITH_TAG_NAME> .
```

#### Image drill-down
1. In our `Dockerfile` we are using `FROM python:3` which indicates that the base-image is [python](https://hub.docker.com/_/python)
2. If we press a tag (Alpine for example), we will get to the `Dockerfile` which was used to [build that image](https://github.com/docker-library/python/blob/master/3.13-rc/alpine3.19/Dockerfile)
3. In the above `Dockerfile` we can see that it was using [alpine-linux](https://alpinelinux.org/) as a base-image using `FROM alpine:3.19`
4. The apline-linux image is [available in the docker hub](https://hub.docker.com/_/alpine) as well
5. Pressing a tag will lead us again to a `Dockerfile` which will contain:
``` Dockerfile
# an explicitly empty image which [can also be found at the docker hub](https://hub.docker.com/_/scratch)
FROM scratch

# the entire alpine-linux rootfs which is [available for download](https://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/x86_64/)
ADD alpine-minirootfs-3.20.2-x86_64.tar.gz /

CMD ["/bin/sh"]
```
