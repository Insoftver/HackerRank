#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/simple-array-sum/problem
# The method is expected to return an Integer.
# The method accepts an Array as parameter.

def simpleArraySum(array)
  resultStore = 0 # Result store
  array.each {|a| resultStore += a}
  return resultStore
end

arCount = gets.to_i until (1..1000).include?(arCount)
array = gets.strip.split(' ').map(&:to_i)
puts simpleArraySum array

#