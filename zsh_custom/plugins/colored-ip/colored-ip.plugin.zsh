
local IP_CMD=$(which ip)
local IPV4_COLOR=$fg[green]
local IPV6_COLOR=$fg[yellow]
local DEFAULT_ROUTE_COLOR=$fg[yellow]
local INTERFACE_COLOR=`echo -e "\e[1m\e[38;5;32m"`
local INTERFACE_DOWN_COLOR=`echo -e "\e[1m\e[38;5;124m"`
local LINK_COLOR=`echo -e "\e[38;5;72m"`

function colored_ip () {
    $IP_CMD $@ | sed \
    -e "s/inet [^ ]\+ /${IPV4_COLOR}&${reset_color}/g"\
    -e "s/inet6 [^ ]\+ /${IPV6_COLOR}&${reset_color}/g"\
    -e "s/link\/ether [^ ]\+ /${LINK_COLOR}&${reset_color}/g"\
    -e "s/^default via .*$/${DEFAULT_ROUTE_COLOR}&${reset_color}/"\
    -e "s/^\([0-9]\+: \+\)\([^ \t]\+\)\(.* UP .*$\)/\1${INTERFACE_COLOR}\2${reset_color}\3/"\
    -e "s/^\([0-9]\+: \+\)\([^ \t]\+\)\(.* UNKNOWN .*$\)/\1${INTERFACE_COLOR}\2${reset_color}\3/"\
    -e "s/^\([0-9]\+: \+\)\([^ \t]\+\)\(.* DOWN .*$\)/\1${INTERFACE_DOWN_COLOR}\2${reset_color}\3/"
}

alias ip=colored_ip
