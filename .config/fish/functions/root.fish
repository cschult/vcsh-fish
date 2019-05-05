# Defined in - @ line 1
function root --description 'alias root sudo -u root -s fish'
	sudo -u root -s fish $argv;
end
