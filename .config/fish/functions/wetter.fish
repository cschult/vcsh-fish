function wetter --description 'alias wetter curl http://wttr.in/Hamburg'

    set _name (status current-command)

    argparse --name=$_name 'p/place=' -- $argv
    or return

    if set -q _flag_p
        set place $_flag_p
    else
        set place "Hamburg"
    end

    # curl "wttr.in/Paris?lang=fr
    command curl http://de.wttr.in/$place
end

