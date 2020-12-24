#!/bin/ruby

### PARTIAL APPLICATIONS
# This script solves the nCrCombination using partial applications.
# https://www.hackerrank.com/challenges/ruby-partial-applications/problem

# To solve the nCrCombination these sources where studied.
# https://en.wikipedia.org/wiki/Combination
# https://dev.to/cooljasonmelton/algorithms-calculating-combination-in-ruby-4n3e

nCrCombination = -> (num1) do
  -> (num2) do # => nCr Combination formula
    factorial(num1) / (factorial(num2) * factorial(num1-num2))
  end
end

def factorial(number)
    (1..number).inject(1) {|factor,counter|factor*counter} 
end

# This is very useful to answer such questions like:
# How many groups of 3 members can be made of a 10-group of people?
# REFERENCE(Spanish): https://www.youtube.com/watch?v=0SwQ2KCcHvg

# 10 people: 
# ['Silvia', 'Mariana', 'Nadia', 'Ana', 'Jorge', 
#  'Maria', 'Alejandra', 'Juan', 'Pablo', 'Enrique']

# ['Silvia', 'Nadia', 'Mariana']
# ['Silvia', 'Nadia', 'Maria'] => Groups of 3 members

people = gets.to_i
groups = gets.to_i
setGroups = nCrCombination.(people)
puts setGroups.(groups) # => 120 (Different groups of 3 members)

#