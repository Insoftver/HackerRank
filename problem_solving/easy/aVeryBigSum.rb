#!/bin/ruby

# This code is related to this problem
# https://www.hackerrank.com/challenges/a-very-big-sum/problem

# Complete the aVeryBigSum function below.
def aVeryBigSum(ar)
  return ar.inject {|sum,num| sum+num}
end

ar_count = gets.to_i until (1..10).include?(ar_count)
ar = gets.rstrip.split(' ').map(&:to_i)
ar.size {i| ar[i] = gets.to_i until (-2147483648..2147483648).include?(ar[i])}
result = aVeryBigSum ar
puts result