# docker-yocto-dev-image
An image for Yocto development

```
docker run \
           --rm \
           --user=${UID} \
           --tty --interactive \
           --hostname=${HOSTNAME} \
           --volume ${PWD}:${PWD} \
           --volume /etc/passwd:/etc/passwd \
           --volume /etc/group:/etc/group \
           --workdir ${PWD} \
           corfr/yocto-dev
```

The image provide essential tools to build packages with Yocto, as described from:
http://www.yoctoproject.org/docs/2.0/ref-manual/ref-manual.html#detailed-supported-distros

The base image is Debian Jessie (8, current stable).

Packages are from the Yocto documentation + essential packages for http://legato.io .
