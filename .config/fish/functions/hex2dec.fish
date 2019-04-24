function hex2dec
    if echo $argv | egrep '^[[:alnum:]]+$' >/dev/null 2>&1
        set x (string replace -r '^0x' '' $argv)
        set x (string upper $x)
        echo "obase=10;ibase=16;$x" | bc
    else
        echo "not a hex number"
    end
end

