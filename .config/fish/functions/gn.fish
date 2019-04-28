function gn --description 'show name of current git repository'

    # Show name of current git repo. Useful When in vcsh.

    git status > /dev/null 2>&1
    if test $status -eq 128
        echo "fatal: not a git repository (or any of the parent directories): .git"
        return 128
    end

    if test (git rev-parse --show-toplevel) = $HOME
        basename (git rev-parse --absolute-git-dir)
    else
        basename (git rev-parse --show-toplevel)
    end

end

