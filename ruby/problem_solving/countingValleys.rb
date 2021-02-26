#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/counting-valleys/problem
# The function is expected to return an INTEGER.

def countingValleys(steps, path)
    # Write your code here
    level, last, valleys = 0, 0, 0
    path.each_char do |char|
        last = level
        char == 'U' ? level +=1 : level-=1
        if last < 0 and level == 0 then valleys+=1 end
    end
    valleys
end

steps = gets.to_i until (2..10**6).include?(steps)
path = gets.chomp
result = countingValleys steps, path
puts result