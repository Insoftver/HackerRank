#!/bin/ruby

# This script solves this problem.
# https://www.hackerrank.com/challenges/ruby-enumerable-each-with-index/problem
# To solve it this source was studied.
# https://ruby-doc.org/core-2.7.2/Enumerable.html

def skip_animals(animals,skip)
	nonSkippedAnimals = Array.new
	animals.each_with_index do |animal,index|
		nonSkippedAnimals[index] = "#{index}:#{animal}" unless (0...skip).include?(index)
  end
# Reference method compact: https://apidock.com/ruby/v1_9_3_392/Array/compact
  return nonSkippedAnimals.compact
end
puts skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)

#