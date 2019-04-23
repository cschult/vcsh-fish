function dec2bin
    if echo $argv | egrep '^[[:digit:]]+$' >/dev/null 2>&1
        echo "obase=2;$argv" | bc -l
    else
        echo "not an integer"
    end
end

