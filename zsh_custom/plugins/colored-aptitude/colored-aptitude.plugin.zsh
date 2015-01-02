
local APTITUDE_CMD=$(which aptitude)
local INSTALLED_COLOR=$fg[green]
local DELETED_COLOR=$fg[red]
local VIRTUAL_COLOR=`echo -e "\e[38;5;242m"`

function aptitude () {
    if [ "$*" = "" ]; then
        $APTITUDE_CMD
        return
    elif [ $1 = "search" ]; then
        $APTITUDE_CMD $@ | sed \
        -e "s/^i.*$/${INSTALLED_COLOR}&${reset_color}/g"\
        -e "s/^c.*$/${DELETED_COLOR}&${reset_color}/g"\
        -e "s/^v.*$/${VIRTUAL_COLOR}&${reset_color}/g"
    else
        $APTITUDE_CMD $@
    fi
}

