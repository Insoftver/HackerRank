#!/bin/ruby

# This script solves this problem.
# https://www.hackerrank.com/challenges/ruby-enumerable-each-with-index/problem
# To solve it this source was studied.
# https://ruby-doc.org/core-2.7.2/Enumerable.html

def iterate_colors(colors)
  counter = 0
  values = Array.new
  colors.each do |color|
      values[counter] = color
      counter += 1
  end
  return values
end

#