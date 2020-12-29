#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/the-birthday-bar/problem
# The function is expected to return an Integer.
# The function accepts:
  # Two Integer values, day and month.

def birthday(squares, day, month)
  ways = 0
  squaresAmount = month
  auxSigma = Array.new(squares.size,0)
  sigma = day
  (squares.size-(squaresAmount-1)).times do |i|
    (squaresAmount).times {|j|auxSigma[i] += squares[i+j]}
    ways += 1 if auxSigma[i] == sigma
  end
  return ways
end

totalSquares = gets.to_i until (1..100).include?(totalSquares)
squares = gets.strip.split(' ').map(&:to_i)
squares.each {|s| s = gets.to_i until (1..5).include?(s)}
dm = gets.rstrip.split(' ').map(&:to_i)
day = dm[0].to_i until (1..31).include?(day)
month = dm[1].to_i until (1..12).include?(month)
result = birthday squares, day, month
puts result
