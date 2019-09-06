#!/usr/bin/with-contenv bash
set -e

#bashCmd='bash -e'
#if [ "${PH_VERBOSE:-0}" -gt 0 ] ; then
#    set -x ;
#    bashCmd='bash -e -x'
#fi

bash -e -x /unbound_init.sh

mkdir -p /tmp/state
touch /tmp/state/10-unbound-init  
