#!/bin/ruby

# This script solves this problem.
# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem
# To solve it this source was studied.

# https://en.wikipedia.org/wiki/ROT13
# https://apidock.com/ruby/String/tr
# https://esolangs.org/wiki/ROT13-Ruby

def rot13 array
	array.map {|element| element.tr 'A-Za-z', 'N-ZA-Mn-za-m'}
end

# puts rot13 ['Why', 'did', 'the', 'chicken', 'cross', 'the', 'road?']
# => Jul qvq gur puvpxra pebff gur ebnq?

# puts rot13 ['To', 'get', 'to', 'the', 'other', 'side']
# => Gb trg gb gur bgure fvqr

#