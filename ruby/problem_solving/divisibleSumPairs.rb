#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

# The method is expected to return an Integer.
# The method accepts:
  # An Integer.
  # An Integer array.
  
def divisibleSumPairs(k, array)
  counter = 0
  array.size.times do |i|
    array.size.times do |j|
      unless i == j then counter += 1 if (array[j] + array[i]) % k == 0 end
    end
  end
  return counter/2
end

#nk = '6 3'.split(' ').map(&:to_i)
#array = '1 3 2 6 1 2'.split(' ').map(&:to_i)

nk = gets.rstrip.split(' ').map(&:to_i)
n = nk[0].to_i until (2..100).include?(n)
k = nk[1].to_i until (1..100).include?(k)
array = gets.rstrip.split(' ').map(&:to_i)
array.each {|i|i = gets.to_i until (1..100).include?(i)}
result = divisibleSumPairs k, array
puts result

#