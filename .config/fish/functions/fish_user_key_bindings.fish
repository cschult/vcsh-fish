function fish_user_key_bindings
    # this function name is important because it's autoloaded

    # don't like vi mode
    fish_default_key_bindings

    # use ESC + ESC to prepend commandline with sudo
    bind \e\e sudope
end

