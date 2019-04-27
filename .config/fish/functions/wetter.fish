function wetter --description 'get weather forecast from wttr.in/'

    set -l _name (status current-command)

    argparse --name=$_name 'p/place=' 'l/lang=' -- $argv
    or return

    while true
        if set -q _flag_p
            # echo \$_flag_p: $_flag_p
            if string match -q -r '^-' -- $_flag_p
                echo "not a valid parameter for option -p/--place: $_flag_p"
                return 3
            else
                set _args $_flag_p
            end
        else
            set _args 'Hamburg'
        end
        if set -q _flag_l
            # echo \$_flag_l: $_flag_l
            if string match -q -r '^-' -- $_flag_l
                echo "not a valid parameter for option -l/--lang: $_flag_l"
                return 3
            else
                set _args (string join '' $_args "?lang=" $_flag_l)
            end
        else
            set _args (string join '' $_args "?lang=" "de")
        end
        break
    end

    # echo $_args
    if not test -z $argv
        echo "non option parameter found: $argv"
        return 4
    end

    # echo "command curl http://wttr.in/$_args"
    command curl http://wttr.in/$_args
end

