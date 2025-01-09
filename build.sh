#! /bin/sh

set -a
. ./.env
set +a


#env
#exit
cd ${BASEDIR}
make buildworld
make buildkernel
cp ${MAKEOBJDIRPREFIX}${SRCDIR}/${TARGET_ARCH}.arm/sys/${KERNCONF}/kernel.bin  /tank/Share/tftp/stora-${SRC_VERSION}.bin
#make installworld
#make distribution
#make installkernel


cd -
exit
