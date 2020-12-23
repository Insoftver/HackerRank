######################################################
# ARITHMETIC OPERATIONS
######################################################
  ### NOTE: Symbol priority from more to least *, /,             +-.
  # Input
    # read exp # Expression
    # exp='5+50*3/20 + (19*2)/7'
    
operation () {
    operator=${exp:1:1} # 2nd character / 1st is ${words:0:1}

    # Read into an array as tokens separated by IFS
    IFS="$operator"
    read -ra array <<< "$exp" # -ra = raw input array
    a=${array[0]}
    b=${array[1]}
    # https://www.computerhope.com/unix/bash/read.htm

    if [ "$operator" == "+" ]; then
        operation=$((a+b))
    fi
    if [ "$operator" == "-" ]; then
        operation=$((a - b))
    fi
    if [ "$operator" == "*" ]; then
        operation=$((a*b))
    fi
    if [ "$operator" == "/" ]; then
        operation=$((a/b))
    fi
    # https://www.tutorialsandyou.com/bash-shell-scripting/bash-arithmetic-operations-11.html
    echo "$operation"
}
exp='2-3'
operation $exp

######################################################