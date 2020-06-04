#!/bin/bash

CONFIG="/etc/modautocompile.conf"

PATH=/sbin:/bin:/usr/sbin:/usr/bin:$PATH
DIRMODULES=/lib/modules/$(uname -r)
REBUILD="prt-get update -fr "

main(){

if [ ! -e ${CONFIG} ] ; then
  echo ${CONFIG} not found
  exit 1
fi

eval "$(awk 'BEGIN { I=-1 } ; !/^#/ { if ( NF ) { MOD=$1 ; I++ ; $1="" ; sub(/ /, "", $0) ;  printf "MOD[%i]=%s; CMD[%i]=\"%s\";",  I, MOD, I, $0 } }' $CONFIG)"

if [ ${#MOD[*]} -eq 0 ] ; then
  exit 2
fi

i=0
while [ $i -lt ${#MOD[*]} ] ; do
  mod=${MOD[$i]}
  cmd=${CMD[$i]}
  unset FINDMOD
  if [ "x$mod" != "x" ] && [ "x$cmd" != "x" ] ; then
    mod=${mod}.ko
    FINDMOD=$(find "$DIRMODULES" -name "$mod")
    if [ "${FINDMOD}" == "" ] ; then
      echo "Compiling module $mod "
      ${REBUILD} "$cmd"
    fi
  fi
 (( i++ ))
done

}

case "$1" in
start)
    main
    ;;
esac

exit 0
