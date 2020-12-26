#!/bin/ruby

# This script returns a numbers fibonacci
# based on the results of this practice on irb.

# x,y = 0,1
# puts x,y = y, x+y
# => 0 <= x
#    1 <= y
#    1 <= x + y

# puts x,y = y, x*y
# => 0 <= x
#    1 <= y
#    0 <= x*y

# x,y = 1,2
# puts x,y = y, x+y
# => 1 <= x
#    2 <= y
#    3 <= x+y
# puts x,y = y, x*y
# => 1 <= x
#    2 <= y
#    2 <= x*y

def fibonacci(number)
	store = Array.new(number,0)
	x,y = 0,1
  number.times do |i|
  	store[i] = y
  	x,y = y,x+y 
  end
  return store.last
end

puts fibonacci 10
# => 55

#