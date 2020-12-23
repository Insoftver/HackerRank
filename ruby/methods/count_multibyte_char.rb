#!/bin/ruby

# This script counts multibyte characters on a given string.
# The function is expected to return an Integer.

# The function accepts: 
  # =>  string(String), string to count.

def count_multibyte_char(string)
  bytes = Array.new(string.size,0)
  countChars = 0
  string.each_char do |char|
    char.each_byte {|byte|bytes[countChars] += 1}
    countChars += 1
  end
  charsBiggerThanOneByte = 0
  bytes.each {|byte|charsBiggerThanOneByte += 1 if byte > 1}
  return charsBiggerThanOneByte
end

# puts count_multibyte_char('¥hola') 
# => 1

# puts count_multibyte_char('hola') 
# => 0

#