Build with

```sh
Docker build -t live-build .
```

Run with:

```sh
docker run -ti --rm --privileged -v $PWD:/src live-build bash /src/scripts/build.sh
```

---

Expect to find lots of `.deb` files in the `cache` directories.

The build `.iso` file should be copied into this root directory.

Files in `config/includes.binary/` (eg: "dosbox-files") will be present in the root of the `.iso` rather than inside the squashfs filesystem. This directory is mounted into `/home/user/dosbox` using overlayfs (making them "writeable" in memory).

Files in `config/includes.chroot_after_packages` (eg: )