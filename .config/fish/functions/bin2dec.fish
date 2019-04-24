function bin2dec
    function _help
        echo "usage:"
        echo "$_ <binary number>"
        echo
        echo "example: $_ 1010"
        echo "output: 10"
    end
    if echo $argv | egrep '^[0,1]+$' >/dev/null 2>&1
        echo "obase=10;ibase=2;$argv" | bc
    else
        echo "not a binary number"
        echo
        _help
    end
end

