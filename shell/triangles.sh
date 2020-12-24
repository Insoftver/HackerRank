######################################################
# TRIANGLES
######################################################
a=3
b=4
c=4
#read a
#read b
#read c
if [ $a -ne $b -a $a -ne $c -a $b -ne $c ]; then
  echo 'SCALENE'
else
 if [ $a -eq $b -a $a -eq $c -a $b -eq $c ]; then
  echo 'EQUILATERAL'
 else
  # You failed in HackerRank due to bad wordspelling
  echo 'ISOSCELES'
 fi
fi
######################################################