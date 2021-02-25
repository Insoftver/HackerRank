#!/bin/ruby

# The function is expected to return a STRING.
# The function accepts following parameters:
#  1. Integer

def random_string(size)
  (0..size.to_i).map { ('a'..'z').to_a[rand(26)] }.join
end

