# Defined in - @ line 1
function devmem --description 'alias h16=ssh -t devmem.de "if tmux has -t devmem; then tmux attach -t devmem; else tmux new -s devmem; fi"'
	ssh -t devmem.de "if tmux has -t devmem; then tmux attach -t devmem; else tmux new -s devmem; fi" $argv;
end
