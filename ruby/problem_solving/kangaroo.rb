#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/kangaroo/problem
# The method is expected to return an String.
# The method accepts 4 Integer values.

def kangaroo(x1, v1, x2, v2)
  dk = (x1.abs - x2.abs).abs # Distance among knagaroos
  a = '' # Answer
  if x1 > x2 # First further
    if v1 > v2 # First faster
      a = 'NO'
    else # Second faster
      if v2 > dk + v1 
        a = 'NO'
      else
        # Check if x2 does not gets over x1 among iterations
        until x2 > x1
          x1 += v1
          x2 += v2
        end
        x2 > x1 ? a = 'NO' : a = 'YES'
      end
    end
  else # Second further
    if v1 > v2 # First faster
      if v1 > dk + v2 
        a = 'NO'
      else
        # Check if x1 does not gets over x2 among iterations
        until x1 >= x2
          x1 += v1
          x2 += v2
        end
        x1 > x2 ? a = 'NO' : a = 'YES'
      end
    else # Second faster
      a = 'NO'
    end
  end
  return a
end

x1V1X2V2 = gets.strip.split(' ').map(&:to_i)
x1 = x1V1X2V2[0].to_i until (0..10_000).include?(x1)
v1 = x1V1X2V2[1].to_i until (1..10_000).include?(v1)
x2 = x1V1X2V2[2].to_i until (0..10_000).include?(x2)
v2 = x1V1X2V2[3].to_i until (1..10_000).include?(v2)
puts kangaroo x1, v1, x2, v2

#