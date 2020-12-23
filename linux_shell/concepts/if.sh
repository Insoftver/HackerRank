###########################################################
# IF
###########################################################
  # Comparise values
    x=3
    y=2
    if [ $x -eq $y ]; then
     echo 'X is equal than Y'
    else
     if [ $x -lt $y ]; then
      echo 'X is less than Y'
     else
      echo 'X is greater than Y'
     fi
    fi

  # Comparise strings
    x="Y"
    if [ "$x" == "Y" -o "$x" == "y" ]; then
      echo 'YES'
    fi
###########################################################