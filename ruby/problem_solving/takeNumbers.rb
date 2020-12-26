#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/ruby-methods-arguments/problem
# The function is expected to return an Array.
# The function accepts an Array and an Integer 
# optional Integer as parameters.

def takeNumbers(numbers, *optionalNumber)
	if optionalNumber.empty?
		numbers -= numbers.take(1)
	else
		numbers -= numbers.take(optionalNumber.join.to_i)
	end
end

#puts takeNumbers([1,2,3], 1)
# => [2, 3]
#puts takeNumbers([1,2,3], 2)
# => [3]
#puts takeNumbers([1,2,3])
# => [2, 3]

#