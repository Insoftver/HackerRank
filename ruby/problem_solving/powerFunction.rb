#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/ruby-curry/problem
# It is aimed to show how the curry method works with lambdas.
# The lambda powerFunction pows an INTEGER.
# The raiseToPower curried lambda takes the base.
# Finally we used the curried lambda with just the 
# power value as parameter

powerFunction = -> (x, z) {(x) ** z}

base = gets.to_i
raiseToPower = powerFunction.curry.(base)

power = gets.to_i
puts raiseToPower.(power)

#