#!/bin/ruby

### PARTIAL APPLICATIONS
# This script solves the nCrCombination using partial applications.
# https://www.hackerrank.com/challenges/ruby-partial-applications/problem

# To solve the nCrCombination these sources where studied.
# https://en.wikipedia.org/wiki/Combination
# https://dev.to/cooljasonmelton/algorithms-calculating-combination-in-ruby-4n3e

nCrCombination = -> (people) do
  -> (groups) do # => nCrCombination formula
    factorial(people) / (factorial(groups) * factorial(people-groups))
  end
end

def factorial(number)
    (1..number).inject(1) {|factor,counter|factor*counter} 
end

# nCrCombination: It is the amount of (r) elements selected 
# out of a list of (n) different elements.
# This is very useful to answer such questions like;
# How many 3-member-groups can be made out of a 10-group of people?
# REFERENCE(Spanish): https://www.youtube.com/watch?v=0SwQ2KCcHvg

# ['Silvia', 'Mariana', 'Nadia', 'Ana', 'Jorge', 
#  'Maria', 'Alejandra', 'Juan', 'Pablo', 'Enrique'] => 10 people

# ['Silvia', 'Nadia', 'Mariana']
# ['Silvia', 'Nadia', 'Maria'] => Groups of 3 members

people = gets.to_i#<= 10
groups = gets.to_i#<= 3
setGroups = nCrCombination.(people)
puts setGroups.(groups) # => 120 (Different 3-member-groups)

#