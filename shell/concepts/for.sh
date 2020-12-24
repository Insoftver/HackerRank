###########################################################
# FOR
###########################################################
  # Lopp on array
    NAMES=(Joe Jenny Sara Tony)
    for N in ${NAMES[@]} ; do
     echo "My name is $N"
    done

  # Loop on command output results
    for f in $( ls /home/siggy ) ; do
     echo $f
    done
###########################################################