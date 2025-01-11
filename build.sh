#! /bin/sh

set -a
. ./.env
set +a


#env
#exit
cp -a $(pwd)/src-${SRC_VERSION}/sys/* ${BASEDIR}/sys/
cd ${BASEDIR}
#make cleanworld
#make buildworld
make buildkernel
cp ${MAKEOBJDIRPREFIX}/${TARGET_ARCH}.arm/${SRCDIR}/sys/${KERNCONF}/kernel.bin  /tank/Share/tftp/stora-${SRC_VERSION}.bin
#make installworld
#make distribution
#make installkernel


cd -
exit
