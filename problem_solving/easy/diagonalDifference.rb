#!/bin/ruby

# => This script is related to the next problem.
# https://www.hackerrank.com/challenges/diagonal-difference/problem
#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(matrix)
  primaryDiagonal = Array.new(matrix.size) { |i| i = 0 }
  secondaryDiagonal = Array.new(matrix.size) { |i| i = 0 }
  matrix.size.times do |x|
    matrix.size.times do#|y|
      primaryDiagonal[x] = matrix[x][x]
      secondaryDiagonal[x] = matrix[x][(matrix.size-1)-x]
    end
  end
  primaryResult, secondaryResult = 0, 0 
  matrix.size.times do |i|
    primaryResult += primaryDiagonal[i]
    secondaryResult += secondaryDiagonal[i]
  end
  return (primaryResult - secondaryResult).to_i.abs#olute 
end

size = gets.strip.to_i
row = Array.new(size)
matrix = Array.new(size) {Array.new(size)}

size.times do |x|
  row = gets.rstrip.split(' ').map(&:to_i)
  size.times do |y|
    row[y] = gets.to_i until (-100..100).include?(row[y])
    matrix[x][y] = row[y]
  end
end

result = diagonalDifference matrix
puts result
