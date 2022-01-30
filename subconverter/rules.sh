#!/bin/bash

_setup(){
    ip route replace default dev utun table 114  >> /dev/null 2>&1
    ip rule del fwmark 114514 lookup 114  >> /dev/null 2>&1
    ip rule add fwmark 114514 lookup 114 >> /dev/null 2>&1
    nft flush ruleset && nft -f /lib/clash/nftables.conf >> /dev/null 2>&1
    exit 0
}

_clean(){
    ip route del default dev utun table 114
    ip rule del fwmark 114514 lookup 114
    nft -f - << EOF
    flush table ip nat
    delete table ip nat
    flush table ip mangle
    delete table ip mangle
EOF
    exit 0
}

case "$1" in
"setup") _setup;;
"clean") _clean;;
esac