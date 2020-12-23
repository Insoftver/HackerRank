#!/bin/ruby

# This script prints the factorial of a number.
# The function is expected to return an Integer.

# The function accepts: 
  # =>  number(Integer), number to factorize.

def factorial(number)
   yield number
end

number = *ARGV # => Array
number = number.join('|').to_i

factorial(number) do |num| 
  factor = 1
  num.times do |counter|
    factor += (factor*counter)
  end
  puts factor
end

# Usage from command line...

# ruby factorial.rb 5
# => 120
# ruby factorial.rb 6
# => 720
# ruby factorial.rb 7
# => 5040
# ruby factorial.rb 8
# => 40320
# ruby factorial.rb 9
# => 362880
# ruby factorial.rb 10
# => 3628800

#