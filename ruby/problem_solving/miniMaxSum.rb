#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/mini-max-sum/problem
# The method is expected to return 2 Integers.
# The method accepts an Array as parameter.

def miniMaxSum(array)
  results = Array.new(array.size) { |i| i = 0 }
  omit = 0
  array.size.times do |i|
    array.size.times do |j|
      if omit == j 
        results[i] += 0
      else
        results[i] += array[j]
      end
    end
    omit += 1
  end
  return results.min, results.max
end

array = gets.strip.split(' ').map(&:to_i)
array.each {|a|a = gets.to_i until (1..10**9).include?(a)}
minimum, maximum = miniMaxSum array
puts "#{minimum} #{maximum}"

#