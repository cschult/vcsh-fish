function gn --description 'show name of current git repository'

    # show name of current git repo. When in vcsh, the
    # remotes name is used

    if test (git rev-parse --show-toplevel) = $HOME
        basename (git remote get-url origin)
    else
        basename (git rev-parse --show-toplevel)
    end

end
