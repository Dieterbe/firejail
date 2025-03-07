# Firejail profile for qemu-system-x86_64
# Description: QEMU system emulator for x86_64
# This file is overwritten after every install/update
# Persistent local customizations
include qemu-system-x86_64.local
# Persistent global definitions
include globals.local

include disable-common.inc
include disable-programs.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
tracelog

private-cache
private-tmp

noexec /tmp
