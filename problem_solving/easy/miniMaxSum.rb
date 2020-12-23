#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/mini-max-sum/problem
# The function is expected to return 2 space separated INTEGERS.
# The function accepts an INTEGER_ARRAY as parameter.

def miniMaxSum(array)
  results = Array.new(array.size,0)
  skip = 0
  array.size.times do |index|
    array.size.times do |skipIndex|
      skip == skipIndex ? results[index] += 0 : results[index] += array[skipIndex]
    end
    skip += 1
  end
  return results.min, results.max
end

array = Array.new
array = gets.rstrip.split(' ').map(&:to_i)
array.size.times {|i| array[i] = gets.to_i until (1..10**9).include?(array[i])}
minimum, maximum = miniMaxSum array
puts "#{minimum} #{maximum}"

#