#!/bin/ruby

# This script encodes a given string into UTF-8 if
# its own encoding is different.

# The function accepts: 
  # =>  string(String), string to be encoded.

def transcode(string)
  return string.force_encoding(Encoding::UTF_8) if string.encoding != 'UTF-8'
end

# Usage

# puts String(123456).encoding
# => US-ASCII
# puts transcode(String(123456)).encoding
# => UTF-8

#