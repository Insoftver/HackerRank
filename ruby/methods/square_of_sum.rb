#!/bin/ruby

# This script works with procs, its function
# is to show how to use them.
# It is related with the next problem.
# https://www.hackerrank.com/challenges/ruby-procs/problem
# The square_of_sum method computes the sum 
# of the elements in an input array and returns 
# the square of the summed elements. 

# The method square_of_sum accepts: 
  # =>  array(Proc), return of proc_square.
  # =>  sigma(Proc), return of proc_sigma.
  # =>  square(Array), number to be operated.

def square_of_sum (array, square, sigma)
  sum = sigma.call(array)
  square.call(sum)
end

proc_square = proc {|x|x*x}
proc_sigma = proc {|x|x.inject(:+)}
array = gets.split.map(&:to_i)
puts square_of_sum(array, proc_square, proc_sigma)

#