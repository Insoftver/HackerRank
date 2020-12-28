#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/apple-and-orange/problem

# The method is expected to return two Integers.
# The method accepts:
  # Six Integers as different values.
    # Integers => s, t, a, b
  # Two Integer arrays => oranges/apples.

def countApplesAndOranges(s, t, a, b, apples, oranges)
  ad = Array.new(apples.size) {|i| i = 0} # Apples distances
  od = Array.new(oranges.size) {|i| i = 0} # Oranges distances
  ac, oc = 0, 0 # Apples/Oranges counters
  apples.size.times do |i| 
    ad[i] = a + apples[i]
    ac += 1 if ((s..t) === ad[i])
  end
  oranges.size.times do |i| 
    od[i] = b + oranges[i]
    oc += 1 if ((s..t) === od[i])
  end
  return ac, oc
end

st = gets.rstrip.split(' ').map(&:to_i) # => Sam\'s house
s = st[0].to_i until (1..10**5).include?(s)
t = st[1].to_i until (1..10**5).include?(t)
ab = gets.rstrip.split(' ').map(&:to_i) # => apple/orange trees location
a = ab[0].to_i until (1..10**5).include?(a)
b = ab[1].to_i until (1..10**5).include?(b)
mn = gets.rstrip.split(' ').map(&:to_i) # => apples/oranges amounts.
m = mn[0].to_i until (1..10**5).include?(m)
n = mn[1].to_i until (1..10**5).include?(n)
apples = gets.rstrip.split(' ').map(&:to_i)
apples.each {|apple| apple = gets.to_i until (-10**5..10**5).include?(apple)}
oranges = gets.rstrip.split(' ').map(&:to_i)
oranges.each {|orange| orange = gets.to_i until (-10**5..10**5).include?(orange)}
apples, oranges = countApplesAndOranges s, t, a, b, apples, oranges
puts apples
puts oranges

#