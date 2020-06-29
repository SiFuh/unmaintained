#!/bin/bash
#
#    ckut - a simple shell script for updating the linux kernel
#
#    Copyright (c) 2020 by Lin SiFuh
#
#    *************************************************************************
#    *                                                                       *
#    * This program is free software; you can redistribute it and/or modify  *
#    * it under the terms of the GNU General Public License as published by  *
#    * the Free Software Foundation; either version 2 of the License, or     *
#    * (at your option) any later version.                                   *
#    *                                                                       *
#    *************************************************************************
#
#   **** USE AT YOUR OWN RISK ****
#

# VERSION=0.5

CONFIG="/etc/ckut.conf"
TMPFILE="$(mktemp)"

# You shouldn't need to configure anything below this line

KERNEL_OLD=$(uname -r)

if [ "root" != "${USER}" ]; then
  echo "Error! You must be root to use this command."
  exit 0
fi

. "${CONFIG}"

curl -s https://www.kernel.org > "${TMPFILE}"

main_script() {

  trap 'exit_script' 2
 
  QUIT=0
  while [ "${QUIT}" -lt 1 ]; do
    tput clear

# Side menu **************************************

    tput bold
    tput setaf 4
    tput cup 6 0
    printf '  %-16.16s\n' ""
    printf ' %-17.17s\n' "[ Latest ]"
    tput sgr0
    tput setaf 5
    
    TEST=$(grep strong < "${TMPFILE}" | \
	    grep -oP '(?<=>).*?(?=<)' | \
	    grep -v "EOL\|Latest" | \
	    awk '{ printf " "$1}')

    for i in ${TEST}; do
    printf '  %-16.16s\n' "${i}"
  done
    printf '  %-16.16s\n' ""

# ************************************************

    tput sgr0
    tput cup 3 19
    tput setab 4
     printf '%-35.35s\n' " [ CRUX Linux Kernel Update Tool ] "
    tput sgr0
 
    tput cup 5 21
    tput setaf 2
    printf ' %-17.17s' "Current Kernel: " 
    tput bold
    printf '%-13.13s\n'  "${KERNEL_OLD}"
      tput sgr0
      tput cup 6 21
      tput setaf 3
    printf ' %-17.17s' "Selected Kernel: "
      tput bold
    if [ -z "${KERNEL}" ]; then
      tput blink
      printf '%-13.13s\n' "NOT SELECTED"
    else
      tput sgr0
      tput bold
      tput setaf 3
    printf '%-13.13s\n' "${KERNEL}"
    fi
 
    tput sgr0
    tput cup 8 21
    printf '  %-29.29s\n' "1. Open kernel.org"
    tput cup 9 21
    printf '  %-29.29s\n' "2. Enter a Kernel Version"
    tput cup 10 21
    printf '  %-29.29s\n' "3. Download Kernel"
    tput cup 11 21
    printf '  %-29.29s\n' "4. Extract Kernel"
    tput cup 12 21
    printf '  %-29.29s\n' "5. Prepare Kernel"
    tput cup 13 21
    printf '  %-29.29s\n' "6. Open Menuconfig"
    tput cup 14 21
    printf '  %-29.29s\n' "7. Compile Kernel"
    tput cup 15 21
    printf '  %-29.29s\n' "8. Install Kernel"
    tput cup 16 21
    printf '  %-29.29s\n' "q. Exit"

    tput bold
    tput cup 19 21
    printf '  %-29.29s\n' ""
    tput cup 19 21
    read -r -p "Enter your choice: " SEL

    case "${SEL}" in
       1) lynx_kernel;;
       2) manual_kernel;;
       3) download_kernel;;
       4) extract_kernel;;
       5) prepare_kernel;;
       6) menuconfig_kernel;;
       7) compile_kernel;;
       8) install_kernel;;
       q) exit_script;;
       *) continue;;
    esac
  done

}

select_kernel() {

  if [ -z "${KERNEL}" ]; then
    tput setaf 1
    tput cup 20 21
    echo "No kernel selected"
    tput sgr0
    tput bold
    tput cup 21 21
    read -n 1 -r -s -p $'Press enter to continue...'
    main_script
  else
      :
  fi

}

directory_kernel() {

  if [ -d "/usr/src/linux-${KERNEL}" ]; then
    :
  else
    tput setaf 1
    tput cup 20 21
    echo "/usr/src/linux-${KERNEL} doesn't exist"
    tput sgr0
    tput bold
    tput cup 21 21
    read -n 1 -r -s -p $'Press enter to continue...'
    main_script
  fi

}

lynx_kernel() {

  export LYNX_SAVE_SPACE="${DOWNLOAD_LOCATION}"
  lynx "https://www.kernel.org/"
  unset LYNX_SAVE_SPACE
  tput cup 20 21
  read -r -p "Enter a selected kernel version? (or enter to ignore): " KERNEL 0</dev/tty

}

manual_kernel() {

  tput cup 20 21
  read -r -p "Enter a kernel version you wish to select:  " KERNEL 0</dev/tty

}

download_kernel() {

  select_kernel
  
  URL=$(grep strong -A 2 < "${TMPFILE}" | \
	  grep href | cut -d "\"" -f 2 | \
	  grep "linux-${KERNEL}.tar.xz")

  if [ -z "${URL}" ]; then
    tput cup 20 21
    read -r -p "Is this an older kernel version? [y/N]? " PROMPT 0</dev/tty
    if [[ ! "${PROMPT}" =~ ^([yY][eE][sS]|[yY])$ ]] ; then
      tput setaf 1
      tput cup 21 21
      echo "Not a valid kernel version"
      tput sgr0
      tput bold
      tput cup 22 21
      read -n 1 -r -s -p $'Press enter to continue...'
      main_script
    else
      download_old_kernel
    fi
  else
    cd "${DOWNLOAD_LOCATION}" || return
    wget -c "${URL}"

    read -n 1 -r -s -p $'Press enter to continue...'
  fi

}

download_old_kernel() {

  select_kernel

  OLD_URL="https://cdn.kernel.org/pub/linux/kernel/v${KERNEL:0:1}.x/linux-${KERNEL}.tar.xz"

  cd "${DOWNLOAD_LOCATION}" || return
  wget -c "${OLD_URL}"

  read -n 1 -r -s -p $'Press enter to continue...'

}

extract_kernel() {

  select_kernel

  if [ -f "${DOWNLOAD_LOCATION}/linux-${KERNEL}.tar.xz" ]; then
    cd /usr/src/ || return
    tar -xvpf "${DOWNLOAD_LOCATION}/linux-${KERNEL}.tar.xz"
    echo "Kernel ${KERNEL} extracted to /usr/src/linux-${KERNEL}"
    read -n 1 -r -s -p $'Press enter to continue...'
  else
    tput setaf 1
    tput cup 20 21
    echo "${DOWNLOAD_LOCATION}/linux-${KERNEL}.tar.xz doesn't exist"
    tput sgr0
    tput bold
    tput cup 21 21
    read -n 1 -r -s -p $'Press enter to continue...'
    main_script
  fi

}

prepare_kernel() {
 
  select_kernel
  directory_kernel

  cd "/usr/src/linux-${KERNEL}" && \
    make ${MAKEFLAGS} mrproper

  if [ -f "${KERNEL_LOCATION}/config-${KERNEL_OLD}}" ]; then
    read -r -p "Copy ${KERNEL_LOCATION}/config-${KERNEL_OLD} to /usr/src/linux-${KERNEL}/.config [y/N]? " PROMPT 0</dev/tty
    if [[ ! "${PROMPT}" =~ ^([yY][eE][sS]|[yY])$ ]] ; then
      main_script
    else
      echo "Copying ${KERNEL_LOCATION}/config-${KERNEL_OLD} to .config"
      cp "${KERNEL_LOCATION}/config-${KERNEL_OLD}" .config
    fi
  else
    echo "No previous config found. Don't forget to configure your kernel"
    read -n 1 -r -s -p $'Press enter to continue...'
  fi

}

menuconfig_kernel() {

  select_kernel
  directory_kernel

  cd "/usr/src/linux-${KERNEL}" || return
    make ${MAKEFLAGS} menuconfig

}

compile_kernel() {

  select_kernel
  directory_kernel

  cd "/usr/src/linux-${KERNEL}" && \
  make ${MAKEFLAGS} all && \
  make ${MAKEFLAGS} modules_install 
  read -n 1 -r -s -p $'Press enter to continue...'

}

install_kernel() {

  select_kernel
  directory_kernel

  cd "/usr/src/linux-${KERNEL}" || return
  cp arch/x86/boot/bzImage "${KERNEL_LOCATION}/vmlinuz-${KERNEL}${LOCALVERSION}" && \
  cp System.map "${KERNEL_LOCATION}/System.map-${KERNEL}${LOCALVERSION}" && \
  cp .config "${KERNEL_LOCATION}/config-${KERNEL}${LOCALVERSION}"
  tput cup 20 21
  echo "Copied kernel version ${MAGENTA}${BOLD}${KERNEL}${LOCALVERSION}${RESET} to ${KERNEL_LOCATION}"
  tput cup 21 21
  read -n 1 -r -s -p $'Press enter to continue...'

}

exit_script() {

  if [ -f "${TMPFILE}" ]; then
    rm "${TMPFILE}"
  else
    :
  fi

  tput sgr0
  unset TMPFILE
  echo ""
  trap 2
  QUIT=1
  exit 0

}

main_script

