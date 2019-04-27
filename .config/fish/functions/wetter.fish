function wetter --description 'alias wetter curl http://wttr.in/Hamburg'

    set -l _name (status current-command)
    #set -e _place
    #set -e _lang

    ##argparse --name=$_name 'p/place=' -- $argv
    #argparse --name=$_name 'p/place=' 'l/lang=' -- $argv
    #or return

    #if set -q _flag_p
    #    echo \$_flag_p: $_flag_p
    #    set _param $_flag_p
    #else
    #    set _param "Hamburg"
    #end
    #if set -q _flag_l
    #    echo \$_flag_l: $_flag_l
    #    # set lang '?lang='
    #    set _param (string join '' $_param "?lang=$_flag_l")
    #end

    #while set optarg (getopts "l:lang: p:place:" $argv)
    #    echo $__getopts_optstr
    #    switch $optarg[1]
    #        case l
    #            echo echo $optarg[1] $optarg[2]
    #        case p
    #            echo echo $optarg[1] $optarg[2]
    #        case \*
    #            echo unknown option `$optarg[1]`
    #    end
    #end
    #echo operands: "$optarg"

    #while set optarg (getopt -n $_name -o 'p:l:' -l 'place:,lang:' -- $argv)
    #    switch $optarg[1]
    #        case -p --place
    #            echo $optarg[1]: $optarg[2]
    #    end
    #end

    argparse --name=$_name 'p/place=' 'l/lang=' -- $argv
    or return

    while true
        if set -q _flag_p
            echo \$_flag_p: $_flag_p
            if string match -q -r '^-' -- $_flag_p
                echo "not a valid parameter for option -p/--place: $_flag_p"
                return 3
            end
        end
        if set -q _flag_l
            echo \$_flag_l: $_flag_l
            if string match -q -r '^-' -- $_flag_l
                echo "not a valid parameter for option -l/--lang: $_flag_l"
                return 3
            end
        end
        break
    end

    if not test -z $argv
        echo "non option parameter found: $argv"
        return 4
    end

    # curl "wttr.in/Paris?lang=fr
    echo "command curl http://wttr.in/$optargs"
    #command curl http://wttr.in/$_param
end

