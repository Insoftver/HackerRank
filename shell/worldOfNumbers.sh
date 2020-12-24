################################################################################################
# 	The world of numbers
################################################################################################
### This script returns the sum, difference, product and quotient
### of two given numbers, it first checck is bothe numbers
### are within a range.
# echo 'Please, set first number.'
# n1=$1
read n1
# Checks if a number is within the range.
until [ $n1 -ge -100 ] && [ $n1 -le 100 ]; do
 # echo "Please set another number at range ("$((start))".."$((end))"), instead of "$((n1))"."
 read n1
done
# echo 'Please, set second number.'
# n2=$2
read n2
# Checks if a number is greater than zero.
until [ $n2 -gt 0 ]; do
 # echo "Please set another number at range (1.."$((end))"), instead of "$((n2))"."
 read n2
done
# printf "%.0f\n" prints just the Integer part.
# printf $((n1+n2))$'\n'$((n1-n2))$'\n'$((n1*n2))$'\n'"%.0f\n" $((n1/n2))
printf "%s\n" $n1{+,-,*,/}"($n2)" | bc # bc => Basic calculator command
###############################################################################################