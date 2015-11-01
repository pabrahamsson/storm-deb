## storm-deb

A dockerfile to build Apache Storm Debian/Ubuntu packages 

```
docker build -t storm .
docker run -it --rm -v $(pwd)/builds:/builds storm
```

Your .deb files will now be in the builds directory
