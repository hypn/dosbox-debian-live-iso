Run with:

```sh
docker run -ti --rm --privileged -v $PWD:/src {imageYouBuilt} bash
```

then `/src/script/build.sh`

---

Expect to find lots of `.deb` files in the `cache` directories.

The build `.iso` file should be copied into this root directory.
