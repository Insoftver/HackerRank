def count_multibyte_char(string)
	bytes = Array.new(string.size,0)
	countChar = 0
	string.each_char do |char|
		char.each_byte {|byte|bytes[countChar] += 1}
		countChar += 1
	end
	charsBiggerThanOneByte = 0
	bytes.each {|byte|charsBiggerThanOneByte += 1 if byte > 1}
	return charsBiggerThanOneByte
end
puts count_multibyte_char('¥hola') # => 1