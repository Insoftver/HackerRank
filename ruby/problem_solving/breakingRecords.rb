#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
# The function is expected to return two INTEGER.
# The function accepts an INTEGER_ARRAY as parameter.

def breakingRecords(scores)
  best, worst = 0, 0
  highest, lowest = scores[0], scores[0]
  scores.size.times do |index|
    unless index == 0
      if scores[index] > highest
        highest = scores[index]
        best += 1
      end
      if scores[index] < lowest
        lowest = scores[index]
        worst += 1
      end
    end
  end
  return best, worst
end

games = gets.strip.to_i until (1..1000).include?(games)
scores = gets.strip.split(' ').map(&:to_i)
scores.size.times do |index| 
  scores[i] = check_range until (0..10**8).include?(scores[index])
end

best, worst = breakingRecords scores
puts "#{best.to_i} #{worst.to_i}"

#