function wetter --description 'alias wetter curl http://wttr.in/Hamburg'

    #set -l options (fish_opt --short=l --long=lang)
    #argparse --name=wetter $options -- $argv
    #or return

    if test -z $argv
        set argv 'Hamburg'
    end

    # curl "wttr.in/Paris?lang=fr
    command curl http://de.wttr.in/$argv
end

