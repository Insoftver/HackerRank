#!/bin/ruby

# This script erases empty spaces at the beggining and the
# end of a given string and removes its last element.
# These string element is part of a set of  elements
# within an array.

# The function accepts: 
  # =>  array(Array), array to be cleaned.

def process_text(array)
  array.size.times {|i| array[i] = array[i].strip.chomp}
  return array.join(' ')
end

# Usage

# process_text(["Hi, \n", " Are you having fun?    "])
# => "Hi, Are you having fun?"

#