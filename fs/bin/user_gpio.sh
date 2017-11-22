#!/bin/sh
#===============================================================================
#
#          FILE:  user_gpio.sh
#
#         USAGE:  source /bin/user_gpio.sh
#
#   DESCRIPTION:  Contains GPIO management for scripts
#
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR: Didier Leymarie, didier.leymarie.ext@parrot.com
#       COMPANY: Parrot
#       CREATED: 2014.01.19
#      REVISION:  ---
#===============================================================================

USER_GPIO_ROOT="/sys/devices/platform/user_gpio"

gpio_directory_path()
{
  echo "${USER_GPIO_ROOT}/$1"
}

gpio_path()
{
  echo "${USER_GPIO_ROOT}/$1/value"
}

gpio_out()
{
  NaMe=$1
  VaLue=$2
  _path=$(gpio_path ${NaMe})
  if [ -f ${_path} ]
  then
    echo "${VaLue}" > ${_path}
    unset NaMe VaLue _path
    return 0
  fi
  unset NaMe VaLue _path
  return 1
}

gpio_in()
{
  NaMe=$1
  _path=$(gpio_path ${NaMe})
  if [ -f ${_path} ]
  then
    cat ${_path}
    unset NaMe _path
    return 0
  fi
  unset NaMe _path
  return 1
}

gpio_edge_set()
{
  NaMe=$1
  VaLue=$2
  _path="${USER_GPIO_ROOT}/${NaMe}/edge"
  if [ -f ${_path} ]
  then
    echo "${VaLue}" > ${_path}
    unset NaMe VaLue _path
    return 0
  fi
  unset NaMe VaLue _path
  return 1
}

gpio_edge_get()
{
  NaMe=$1
  _path="${USER_GPIO_ROOT}/${NaMe}/edge"
  if [ -f ${_path} ]
  then
    cat ${_path}
    unset NaMe _path
    return 0
  fi
  unset NaMe _path
  return 1
}

gpio_direction_set()
{
  NaMe=$1
  VaLue=$2
  _path="${USER_GPIO_ROOT}/${NaMe}/direction"
  if [ -f ${_path} ]
  then
    echo "${VaLue}" > ${_path}
    unset NaMe VaLue _path
    return 0
  fi
  unset NaMe VaLue _path
  return 1
}

gpio_direction_get()
{
  NaMe=$1
  VaLue=$2
  _path="${USER_GPIO_ROOT}/${NaMe}/direction"
  if [ -f ${_path} ]
  then
    cat ${_path}
    unset NaMe _path
    return 0
  fi
  unset NaMe _path
  return 1
}

gpio_debug()
{
  fname="/sys/kernel/debug/gpio"
  [ -f ${fname} ] && cat ${fname}
}