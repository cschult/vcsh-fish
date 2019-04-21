# Defined in - @ line 1
function jc-dmesg --description 'alias jc-dmesg journalctl -k -f -n 50'
	journalctl -k -f -n 50 $argv;
end
