# PimpMyTerminal
| Pimpmyterminal is currently only compatible with Ubuntu version 20.04 (Beta)

## Packages installed with this script
* [Neofetch](https://github.com/dylanaraps/neofetch) : A command-line system information tool written in bash 3.2+
* [Bat](https://github.com/sharkdp/bat) : A cat clone with syntax highlighting and Git integration.
* [Ncdu](https://linux.die.net/man/1/ncdu) : NCurses Disk Usage is an alternative to **du -h**
* [Duf](https://github.com/muesli/duf) : duf in an alternative to df
* [Btop](https://github.com/aristocratos/btop) : Resource monitor that shows usage and stats for processor, memory, disks, network and processes.
* [Nano](https://github.com/serialhex/nano-highlight) : A spiffy collection of nano syntax highlighting files

## Aliases installed
* alias neofetch='neofetch --config /home/${USER}/.config/neofetch/.neofetch.conf'
* alias cat=batcat
* freespace=ncdu
* disk=duf

## Installation
cd PimpMyTerminal

bash install.sh
