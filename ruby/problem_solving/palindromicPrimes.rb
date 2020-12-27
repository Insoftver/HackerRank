#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/ruby-lazy/problem

# https://ruby-doc.org/stdlib-2.5.1/libdoc/prime/rdoc/Prime.html
# https://stackoverflow.com/questions/1623410/finding-palindromic-numbers-in-ruby

require 'prime'

def palindromicPrimes(number)
  return "#{Prime.each.lazy.select{|prime| prime.to_s == prime.to_s.reverse}.first(number)}"
end

number = gets.to_i
puts palindromicPrimes(number)

# => My answer

# def palindromicPrimes(number)
  # primes = Array.new
  # 1.upto(Float::INFINITY).lazy.map {|x|primes.push(x) if Prime.prime?(x)}.first(1489842) 
  # primes.keep_if {|prime|prime.to_s.reverse == prime.to_s}
  # return "#{primes.take(number)}"
# end

#