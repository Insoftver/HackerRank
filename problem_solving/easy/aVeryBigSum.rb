#!/bin/ruby

# This scripts solves this problem.
# https://www.hackerrank.com/challenges/a-very-big-sum/problem
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY as parameter.

def aVeryBigSum(array)
  return array.inject {|sigma,number| sigma+number}
end

arrayCount = gets.to_i until (1..10).include?(arrayCount)
array = Array.new(arrayCount, 0)
array = gets.rstrip.split(' ').map(&:to_i)
array.size {|i| array[i] = gets.to_i until (-2**31..2**31).include?(array[i])}
result = aVeryBigSum array
puts result

#