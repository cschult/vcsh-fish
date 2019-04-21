# Defined in - @ line 1
function mess --description 'alias mess journalctl --system -f -n 45'
	journalctl --system -f -n 45 $argv;
end
