#!/bin/sh
#AUFS2VERSION=""
#KERNELVERSION=2.6.35
GITSNAPSHOT=20100809
# aufs2 (no -xx) for the latest -rc version.
rm -R aufs2-util.git
git clone http://git.c3sl.ufpr.br/pub/scm/aufs/aufs2-util.git aufs2-util.git
cd aufs2-util.git
#git checkout origin/aufs2${AUFS2VERSION}
#*** apply "aufs2-base.patch" and "aufs2-standalone.patch" to your kernel source files.
cd ..
rm -rf aufs2-util-${GITSNAPSHOT}
cp -a aufs2-util.git aufs2-util-${GITSNAPSHOT}
tar -czf aufs2-util-${GITSNAPSHOT}.tar.gz --exclude=.git aufs2-util-${GITSNAPSHOT}