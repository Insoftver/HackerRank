#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/time-conversion/problem
# The function is expected to print a military format 
# 24 hour time given starting value as shown below.

# The function accepts: 
# => size(Integer), size of the staircase.
#
# Complete the timeConversion function below.
#
def timeConversion(array)
  dayTime = "#{array[2][-2]}#{array[2][-1]}" # Gets AM/PM from s
  if dayTime == 'AM' then array[0].to_i == 12 ? hour = '00' : hour = array[0].to_i end
  if dayTime == 'PM' then array[0].to_i == 12 ? hour = '12' : hour = array[0].to_i + 12 end
  return (Time.gm(0000, 'jan', 1, hour, array[1], "#{array[2][-4]}#{array[2][-3]}")).strftime("%H:%M:%S")
end

array = (gets.to_s.rstrip).split(':').map(&:to_s)
result = timeConversion array
puts result

#