#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/sock-merchant/problem
# The method is expected to return an Integer
# The method accepts:
  # An Integer as amount of socks.
    # amount='9'.to_i # => test_var
  # An integer array representing the socks.
    # socks = '10 20 20 10 10 30 50 10 20'.split(' ').map(&:to_i) # => test_var

def sockMerchant(amount, socks)
  list = Hash.new(0)
  socks.each {|value| list[value] += 1 }
  list = list.collect {|key,value|value/2}
  return list.inject {|sigma,number|sigma+number}
end

amount = gets.to_i until (1..100).include?(amount)
socks = gets.rstrip.split(' ').map(&:to_i)
socks.size {|i| socks[i] = gets until (0...amount).include?(socks[i])}
pairs = sockMerchant amount, socks
puts pairs

#