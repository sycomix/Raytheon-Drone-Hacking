#! /bin/sh
# library of functions for managing debug directory
# this file has to be sourced by other scripts

source /bin/delos_shell.sh

# Create
DEBUG_CreateDir()
{
  # Main Debud repository
  [ ! -d ${DELOS_DEBUG_PATH} ] && mkdir -p ${DELOS_DEBUG_PATH}

  # Current Debud sub-repository (containing current debug files)
  [ ! -d ${DELOS_DEBUG_CUR_DIR} ] && mkdir -p ${DELOS_DEBUG_CUR_DIR}

  # Archive Debud sub-repository (containing old debug files)
  [ ! -d ${DELOS_DEBUG_ARCH_DIR} ] && mkdir -p ${DELOS_DEBUG_ARCH_DIR}

  # Clean up archive directory, remove none archives files
  for entry in `ls ${DELOS_DEBUG_ARCH_DIR}`; do
    echo "$entry" | grep -E "^.*\.tar\.lzo\$" &> /dev/null
    ret=$?
    # delete none .tar.lzo files
    if [ $ret -ne 0 ] ; then
      rm -Rf ${DELOS_DEBUG_ARCH_DIR}/${entry}*
    fi
  done

  counter_tar="${DELOS_DEBUG_ARCH_DIR}/.counter"

  debug_kept_tar=3
  config="/etc/debug.conf"
  if [ -f ${config} ]
  then
    source ${config}
  fi
  if [ ${debug_kept_tar} -lt 2 ]
  then
    debug_kept_tar=2
  fi
  if [ ${debug_kept_tar} -gt 50 ]
  then
    debug_kept_tar=50
  fi

  [ ! -f ${counter_tar} ] && echo "0" > ${counter_tar}
  counter=$(cat ${counter_tar})

  if [ "$(ls -A ${DELOS_DEBUG_CUR_DIR})" ]
  then

    n=$(( ${counter}-${debug_kept_tar}-1 ))
    if [ ${n} -gt 0 ]
    then
      for i in $(seq 0 ${n})
      do
        tar="${DELOS_DEBUG_ARCH_DIR}/debug_$i.tar.lzo"
        [ -f ${tar} ] && rm -f ${tar}
      done
    fi

    DEBUG_TAR="${DELOS_DEBUG_ARCH_DIR}/debug_$counter.tar.lzo"
    echo "Debug files go into archive ${DEBUG_TAR}" | logger -s -t "Debug" -p user.info

    DELOS_STORAGE_PATH="${DELOS_MOUNT_PATH}/${DELOS_PRODUCT_MEDIA_PATH}"

    [ ! -d ${DELOS_DEBUG_CUR_DIR}/navdata ] && mkdir -p ${DELOS_DEBUG_CUR_DIR}/navdata

    if [ -d ${DELOS_STORAGE_PATH}/navdata/ ];then
      # add .pud file that has not already been archived
      for entry in `ls ${DELOS_STORAGE_PATH}/navdata/`; do
        echo "$entry" | grep -E "^.*\.pud\$" &> /dev/null
        if [ $? -eq 0 ] ; then
          mv ${DELOS_STORAGE_PATH}/navdata/${entry} ${DELOS_DEBUG_CUR_DIR}/navdata/${entry}
          if [ $? -eq 0 ] ; then
            echo "archiving: " $entry
          fi
        fi
      done
    fi

    tar -c -C ${DELOS_DEBUG_CUR_DIR} $(ls ${DELOS_DEBUG_CUR_DIR}) | lzop -c > ${DEBUG_TAR}

    counter=$(( counter+1 ))
    if [ ${counter} -ge 255 ]
    then
      counter=0
    fi

    echo ${counter} > ${counter_tar}
    rm -Rf ${DELOS_DEBUG_CUR_DIR}/*
  fi
}
