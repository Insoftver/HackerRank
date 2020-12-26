#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/ruby-enumerable-group-by/problem
# The function is expected to return a Hash.
# The function accepts a Hash and an Integer as parameters.

def group_by_marks(marks,pass_marks)
	marks.group_by {|key,value| value < pass_marks ? "Failed" : "Passed" }
end

# marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
# puts group_by_marks marks, 30
# => {"Failed"=>[[:Ramesh, 23]], "Passed"=>[[:Vivek, 40], [:Harsh, 88], [:Mohammad, 60]]}

#