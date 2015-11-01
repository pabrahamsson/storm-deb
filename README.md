## storm-deb

A dockerfile to build Apache Storm Debian/Ubuntu packages.
This is using on https://github.com/pershyn/storm-debian-packaging for building
the packages.

```
docker build -t storm .
docker run -it --rm -v $(pwd)/builds:/builds storm
```

Your .deb files will now be in the builds directory
