# Jumpstorm command completition
# @see https://github.com/netresearch/jumpstorm

_jumpstorm_get_command_list () {
    ./jumpstorm --no-ansi | sed "1,/Available commands/d" | awk '/^  [a-z]+/ { print $1 }'
}

_jumpstorm () {
    if [ -f jumpstorm ]; then
        compadd `_jumpstorm_get_command_list`
    fi
}

compdef _jumpstorm jumpstorm
