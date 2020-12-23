#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/compare-the-triplets/problem
# The function is expected to return an INTEGER_ARRAY.
# The function accepts 2 INTEGER_ARRAYS as parameters.

def compareTriplets(aliceValues, bobValues)
  results = [0, 0]
  3.times do |i|
    if aliceValues[i] > bobValues[i] then results[0] += 1 end
    if aliceValues[i] < bobValues[i] then results[1] += 1 end
  end
  return results
end

aliceValues = gets.rstrip.split.map(&:to_i)
3.times {|i| aliceValues[i] = gets.to_i until (1..100).include?(aliceValues[i])}
bobValues = gets.rstrip.split.map(&:to_i)
3.times {|i| bobValues[i] = gets.to_i until (1..100).include?(bobValues[i])}
result = compareTriplets aliceValues, bobValues
puts result

#