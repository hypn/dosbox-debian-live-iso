# General

Build the required docker image with:

```sh
docker build -t live-build .
```

Then run:

```sh
docker run -ti --rm --privileged -v $PWD:/src live-build bash /src/scripts/build.sh
```

This should produce a `live-image-i386.hybrid.iso` file in this source directory, which can be live booted.

Expect to find lots of `.deb` files in the `cache` directories - this is to facilitate rebuilding (eg: for tweaking and testing).

# Dos files

Files can be placed in two locations depending on the use case:

1. Booting from Easy2Boot/agFM: in a `dosbox-files` directory in the root of the USB drive to be used
2. Otherwise: in the `config/includes.binary/dosbox-files` for them to be built into the ISO (eg: accessible when the iso is mounted or written to a physical disc) - before running the build step above

# Boot menu files
By default there is no timeout set on the MBR/UEFI boot cfg files, and in MBR there's a beep (due to a "character 0x07" in the menu title).

The `boot-menu-files` contains a copy of the paths+files with changes that can be replaced in the output .iso using "PowerIso"