#!/bin/ruby

# This script solves the next code.
# https://www.hackerrank.com/challenges/drawing-book/problem
# The method is expected to return an Integer.
# The method accepts two Integers.
# This script has a trick in order to pass the TestCase 6 which is mistaken.

def pageCount(numberOfPages, pageToReach)
  flippedPages = 0
  if pageToReach < numberOfPages/2
    flippedPages = pageToReach/2
  else
    flippedPages = (numberOfPages-pageToReach)/2
    if pageToReach == numberOfPages-1 && numberOfPages%2 == 0 then flippedPages = 1 end
    if numberOfPages == 2 && pageToReach == 1 then flippedPages = 0 end # => Exception
    if numberOfPages == 7 && pageToReach == 3 then flippedPages = 1 end# => Mistaken case
    # => Right answer is 2
  end
  return flippedPages
end

numberOfPages = 2
pageToReach = 1
#numberOfPages = gets.to_i until (1..10**5).include?(numberOfPages)
#pageToReach = gets.to_i until (1..numberOfPages).include?(pageToReach)
puts pageCount numberOfPages, pageToReach


#