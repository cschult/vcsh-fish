# Defined in - @ line 1
function wetter --description 'alias wetter curl http://wttr.in/Hamburg'
	curl http://wttr.in/Hamburg $argv;
end
