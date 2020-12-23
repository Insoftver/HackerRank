#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/plus-minus/problem
# The function is expected to return 3 INTEGERS.
# The function accepts an INTEGER_ARRAY as parameter.

def plusMinus(array)
  positiveValues, negativeValues, equalToZero = 0, 0, 0
  array.size.times do |i|
    if array[i].to_i > 0 then positiveValues += 1 end
    if array[i].to_i < 0 then negativeValues += 1 end
    if array[i].to_i == 0 then equalToZero += 1 end
  end
  # {"%.6f" %} => Adds up to four zeroes for closed values.
  positiveValues = "%.6f" % (positiveValues.to_f / array.size).round(6)
  negativeValues = "%.6f" % (negativeValues.to_f / array.size).round(6)
  equalToZero = "%.6f" % (equalToZero.to_f / array.size).round(6)
  return positiveValues, negativeValues, equalToZero
end

size = gets.to_i until (1..100).include?(size)
array = Array.new(size,10)
array = gets.rstrip.split(' ').map(&:to_i)
size.times {|i| array[i] = gets.to_i until (-100..100).include?(array[i])}
positiveProportion, negativeProportion, equalToZero = plusMinus array
puts positiveProportion
puts negativeProportion
puts equalToZero

#