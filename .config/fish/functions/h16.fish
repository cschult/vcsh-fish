# Defined in - @ line 1
function h16 --description 'alias h16=ssh -t devmem.de "if tmux has -t h1626767; then tmux attach -t h1626767; else tmux new -s h1626767; fi"'
	ssh -t devmem.de "if tmux has -t h1626767; then tmux attach -t h1626767; else tmux new -s h1626767; fi" $argv;
end
