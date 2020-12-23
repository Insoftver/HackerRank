#!/bin/ruby

# This script masks a word with the labels
# <strike>#{word}</strike> if it is found
# in a given text. To do that uses a method 
# named mask and a private function named strike.
# The function is expected to return an String.

# The function strike accepts: 
  # =>  word(String), word to label.

# The function mask accepts: 
  # =>  word(Array), word to find.
  # =>  text(String), text to mask.

def mask(text, word)
  word = word.join('|')
  text.gsub(/#{word}/) {|match| strike(match)}
end

private

def strike(word)
  "<strike>#{word}</strike>"
end


# Usage

# puts mask("The killing has already started.", ["killing"])
# => The <strike>killing</strike> has already started!

# puts mask("Then he said. - This is crap! - and cried.", ["crap"])
# => Then he said. - This is <strike>crap</strike>! - and cried.

# puts mask("They shown the implicates list.", ["assassins"])
# => They shown the implicates list.

#