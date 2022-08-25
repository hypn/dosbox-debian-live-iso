#!/bin/bash

# see https://www.mail-archive.com/debian-live@lists.debian.org/msg17513.html

# find the SECOND umount of $TARGET/proc
LINE_NUM=$(grep -n 'umount "$TARGET/proc" 2>/dev/null' /usr/share/debootstrap/functions | tail -n1 | awk -F':' '{print $1}')

# and remove it (easier than commenting out)?
sed -i "${LINE_NUM}d" /usr/share/debootstrap/functions
