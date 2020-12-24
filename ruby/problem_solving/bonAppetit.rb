#!/bin/ruby

# This script solves the next problem.
# https://www.hackerrank.com/challenges/bon-appetit/problem
# The function is expected to return an Integer or a String..
# The function accepts an INTEGER_ARRAY and 2 INTEGERS as 
# parameters.

def bonAppetit(bill, itemNotEaten, moneyPaidByAnna)
  bill.delete_at(itemNotEaten)
  right_bill = bill.inject {|sum,num| sum+num} / 2
  if (moneyPaidByAnna - right_bill) > 0 then moneyPaidByAnna - right_bill else 'Bon Appetit' end
end

nk = gets.strip.split(' ').map(&:to_i)
itemsOrdered = nk[0] until (2..10**5).include?(itemsOrdered)
itemNotEaten = nk[1] until (0..itemsOrdered).include?(itemNotEaten)
bill = gets.strip.split.map(&:to_i)
bill.size {|i| bill[i] = gets until (0..10**4).include?(bill[i])}
upperLimitForBill = (bill.inject {|sigma,number| sigma+number}) - 1
moneyPaidByAnna = gets.strip.to_i until (0..upperLimitForBill).include?(moneyPaidByAnna)

result = bonAppetit bill, itemNotEaten, moneyPaidByAnna
puts result

#