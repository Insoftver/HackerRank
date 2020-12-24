#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/grading/problem
# The function is expected to return an integer array
# with the grades averaged according to the problem.

# The function accepts: 
# => grades(Array(Integer)), time to convert.

def gradingStudents(grades)
  nextMultipleOfFive = 0
  mod = 0 # => Module
  grades.size.times do |index|
    nextMultipleOfFive = (grades[index]/5).to_i
    mod = (grades[index]%5).to_i
    unless nextMultipleOfFive < 7
      unless mod < 3
        nextMultipleOfFive += 1
        grades[index] = nextMultipleOfFive * 5
      end
    end
  end
  return grades
end

gradesCount = gets.strip.to_i until (1..60).include?(gradesCount)
grades = Array.new(gradesCount)
gradesCount.times do |index|
  grades[index] = gets.to_i until (0..100).include?(grades[index])
end
result = gradingStudents grades
puts result

#
