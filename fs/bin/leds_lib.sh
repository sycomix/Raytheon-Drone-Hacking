#!/bin/sh
#===============================================================================
#
#          FILE:  led_libs.sh
#
#         USAGE:  source /bin/led_libs.sh
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
source /bin/delos_shell.sh
source /bin/user_gpio.sh

HSIS_ROOT="/sys/kernel/hsis"
pcbrev=$(read_hsis_pcbrev)
model=$(read_hsis_model)

led_set()
{
  if [ $# -lt 3 ]
  then
    return 1
  fi
  nAmE=$(echo $1 | tr [:upper:] [:lower:] ) # red, green, headlight
  sIdE=$(echo $2 | tr [:upper:] [:lower:] ) # left, right, both
  val=$3 # int
  case ${nAmE} in
    red)
	case ${sIdE} in
	  left)
	    N="RED_LED_LEFT"
	    ;;
	  right)
	    N="RED_LED_RIGHT"
	    ;;
	  both)
	    N="RED_LED_LEFT RED_LED_RIGHT"
	    ;;
	  *)
	    return 1
	    ;;
	esac
	V=$(( val ))
	if [ $V -gt 0 ]
	then
	  V=1
	else
	  V=0
	fi
	for n in ${N}; do gpio_out $n ${V};done
      ;; # red
    green)
	case ${sIdE} in
	  left)
	    N="GREEN_LED_LEFT"
	    ;;
	  right)
	    N="GREEN_LED_RIGHT"
	    ;;
	  both)
	    N="GREEN_LED_LEFT GREEN_LED_RIGHT"
	    ;;
	  *)
	    return 1
	    ;;
	esac
	V=$(( val ))
	if [ $V -gt 0 ]
	then
	  V=1
	else
	  V=0
	fi
	for n in ${N}; do gpio_out $n ${V};done
      ;; # green
    headlight)
      case $(cat ${HSIS_ROOT}/model) in
	EVO)
	  x=0
	  case ${sIdE} in
	    left)
	      N=$(cat ${HSIS_ROOT}/pwm_gen_headlight_left)
	      if [ $N -ge 0 ]
	      then
		N=$(( N+2 ))
		x=1
	      else
		return 1
	      fi
	      ;;
	    right)
	      N=$(cat ${HSIS_ROOT}/pwm_gen_headlight_right)
	      if [ $N -ge 0 ]
	      then
		N=$(( N+2 ))
		x=1
	      else
		return 1
	      fi
	      ;;
	    both)
	      N=""
	      x=0
	      n=$(cat ${HSIS_ROOT}/pwm_gen_headlight_left)
	      if [ $n -ge 0 ]
	      then
		n=$(( n+2 ))
		N="$n $N"
		x=$(( x+1 ))
	      fi
	      n=$(cat ${HSIS_ROOT}/pwm_gen_headlight_right)
	      if [ $n -ge 0 ]
	      then
		n=$(( n+2 ))
		N="$n $N"
		x=$(( x+1 ))
	      fi
	      ;;
	    *)
	      return 1
	      ;;
	  esac
      _i2c_addr=$(read_hsis_i2c_addr "pca9633")
	  _HSIS_COMPLEMENT="/sys/kernel/hsis/pwm_gen_headlight_complement"
	  _complement=0
	  [ -f ${_HSIS_COMPLEMENT} ] && read _complement < ${_HSIS_COMPLEMENT}
	  if [ ${_complement} -eq 1 ]
	  then
	    V=$(( 255-val ))
	  else
	    V=$(( val ))
	  fi
	  if [ $x -gt 0 ]
	  then
        if [ ! ${_i2c_addr} == "Unknown" ];then
	      for n in ${N};do i2c_cmd ${_i2c_addr} ${n} ${V} >> /dev/null;done
        else
          echo "ERROR: Can't get PWM Gen I2C Addr" | logger -s -t "leds_lib" -p user.err
        fi
	  fi
	  ;; # EVO
	Classic)
	  return 1
	  ;; # Classic
      esac
      ;; # headlight
    *)
      return 1
      ;;
  esac
  return 0
}

