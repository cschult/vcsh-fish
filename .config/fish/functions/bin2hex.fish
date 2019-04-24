function bin2hex
    function _help
        echo "usage:"
        echo "$_ <binary number>"
        echo
        echo "example: $_ 1010"
        echo "output: 0xA"
    end
    if echo $argv | egrep '^[0,1]+$' >/dev/null 2>&1
        set hex (echo "obase=16;ibase=2;$argv" | bc)
        echo "0x$hex"
    else
        echo "not a binary number"
        _help
    end
end

