#!/bin/ruby

# This script solves this problem.
# https://www.hackerrank.com/challenges/ruby-enumerable-reduce/problem

# To solve it this source was studied.
# (Portuguese) https://www.infoescola.com/matematica/sequencias-numericas/
# 

def sumTerms number
	(0..n).inject {|sigma,counter| sigma + (counter * counter + 1 )}
end
puts sumTerms 5

# => 

#