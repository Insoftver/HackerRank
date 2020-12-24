#!/bin/ruby

### PARTIAL APPLICATIONS
# This script solves the nCrCombination using partial applications.
# https://www.hackerrank.com/challenges/ruby-partial-applications/problem

# To solve the nCrCombination these sources where studied.
# https://en.wikipedia.org/wiki/Combination
# https://dev.to/cooljasonmelton/algorithms-calculating-combination-in-ruby-4n3e

nCrCombination = -> (num1) do
  -> (num2) do
    factorial(num1) / (factorial(num2) * factorial(num1 - num2))
  end
end

def factorial(num)
    (1..num).inject(1){ |prod, i| prod * i } 
end

n = gets.to_i
r = gets.to_i
nCr = nCrCombination.(n)
puts nCr.(r)

#



