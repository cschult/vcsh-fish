function mkcd -d "Create a directory and set CWD"
    command mkdir $argv
    set -l _last_status $status
    if test $_last_status = 0
        set -l _last_arg $argv[(count $argv)]
        switch $_last_arg
            case '-*'
                if test -d $_last_arg
                    cd ./$_last_arg
                    return $status
                end
            case '*'
                cd $_last_arg
                return $status
        end
    else
        return $_last_status
    end
end

