function mt --description 'view monit status with elinks'
    # (C) cschult@devmem.de 05.09.2019
    # Ssh tunnel is established at boot as a systemd user service
    # (~/.config/systemd/user/monit-tunnel.service), which uses
    # autossh.
    elinks https://schulle@localhost:2812
end

