def factorial(n)
   yield n
end

n = gets.to_i

factorial(n) do |number| 
  factor = 1
  number.times do |counter|
	 	factor += (factor*counter)
  end
  puts factor
end