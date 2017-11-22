#!/bin/sh

source /bin/delos_shell.sh

name=$(basename $0)
logger -s -t "$name" -p user.info "Enter $0"

DRAGONSHELL_stopNkill_dragon #see dragon_shell.sh in common skel
umount /data/ftp/*
logger -s -t "$name" -p user.info "Erase all data... (unmount not down => bad...)"
rm -Rf /data/*

sync

# Shutdown the system
logger -s -t "$name" -p user.info "Shutdown please..."
/bin/delos_shutdown.sh
