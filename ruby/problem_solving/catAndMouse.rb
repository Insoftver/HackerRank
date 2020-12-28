#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/cats-and-a-mouse/problem

# The function is expected to return a String.
# The function accepts:
  # An Integer denoting the number of queries.
  # Two Integer arrays wih the locations.

def catAndMouse(x, y, z)  catA = distance(x,z)
  catB = distance(y,z)
  if catA == catB
    return 'Mouse C' 
  else
    if catA > catB then return 'Cat B' else return 'Cat A' end
  end
end

def distance(c,m) # => cat/mouse
  return c >= m ? (c-m).abs : (m-c).abs#olute
end

q=1 # => test var
#q = gets.to_i until (1..100).include?(q)

q.times do |q_itr|
  xyz = '1 3 2'.split(' ').map(&:to_i) # => test var
  #xyz = gets.rstrip.split(' ').map(&:to_i)
  xyz.size {|i| xyz[i] = gets until (1..100).include(xyz[i])}
  x = xyz[0]
  y = xyz[1]
  z = xyz[2]
  result = catAndMouse x, y, z
  puts result
end

#