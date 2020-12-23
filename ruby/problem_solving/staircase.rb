#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/staircase/problem
# The function is expected to print a staircase based on 
# a given size value as shown below.

# The function accepts: 
  # => size(Integer), size of the staircase.

def staircase(size)
  size.times do |counter|
    puts "#{" " * ((size-counter)-1)}" + "#{"#" * (counter+1)}"
  end
end

# Usage

  # size = 5 # <= testVar
  # or
  # size = gets.to_i until (1..100).include?(size)

  # staircase(size)
  # =>
          #
         ##
        ###
       ####
      #####

#