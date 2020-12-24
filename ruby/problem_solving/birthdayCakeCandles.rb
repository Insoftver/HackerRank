#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/birthday-cake-candles/forum
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.

def birthdayCakeCandles(candles)
    return candles.count(candles.max)
end

candlesCount = 0
candles = Array.new(candlesCount,0)
# candlesCount = 4 # => testVar
# candles = '3 2 1 3'.split(' ').map(&:to_i) # => testVar
candlesCount = gets.to_i until (1..10**5).include?(candlesCount)
candles = gets.strip.split(' ').map(&:to_i)
candles.size.times {|i| candles[i] = gets.strip.to_i until (1..10**7).include?(candles[i])}
puts birthdayCakeCandles candles

#