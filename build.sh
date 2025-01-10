#! /bin/sh

set -a
. ./.env
set +a


#env
#exit
cd ${BASEDIR}
#make cleanworld
make buildworld
make buildkernel
cp ${MAKEOBJDIRPREFIX}/${TARGET_ARCH}.arm/${SRCDIR}/sys/${KERNCONF}/kernel.bin  /tank/Share/tftp/stora-${SRC_VERSION}.bin
#make installworld
#make distribution
#make installkernel


cd -
exit
