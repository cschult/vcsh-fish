function gn --description 'show name of current git repository'

    # show name of current git repo. When in vcsh, the
    # remotes name is used

    git status > /dev/null 2>&1
    if test $status -eq 128
        echo not a git repository
        return
    end

    if test (git rev-parse --show-toplevel) = $HOME
        basename (git remote get-url origin)
    else
        basename (git rev-parse --show-toplevel)
    end

end
