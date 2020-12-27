#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/ruby-lazy/problem

# To solver this challenge the below pages were revised.
# http://time-and-calendar.com/leap-years/1918
# https://stackoverflow.com/questions/1554340/understanding-the-or-operator-in-if-conditionals-in-ruby

def dayOfProgrammer(year)
  date = String.new('')
  if year > 1918
    if (year%400 == 0) || (year%100 != 0 && year%4 == 0) then
      return date = "12.09.#{year}"
    else
      return date = "13.09.#{year}"
    end
  end
  if year < 1918
    if year % 4 == 0
      return date = "12.09.#{year}"
    else
      return date = "13.09.#{year}"
    end
  end
  if year == 1918 then return date = "26.09.#{year}" end
end

year = gets.strip.to_i until (1700..2700).include?(year)
puts dayOfProgrammer year

#