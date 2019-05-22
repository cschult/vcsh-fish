# Defined in - @ line 1
function devmem --description "ssh to devmem.de and start or enter tmux session called 'devmem'"
    ssh -t devmem.de "sh -c 'if tmux has -t devmem; then tmux attach -t devmem; else tmux new -s devmem; fi'"
end
