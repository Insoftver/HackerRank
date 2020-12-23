def process_text(array)
	array.size.times {|i| array[i] = array[i].strip.chomp}
	return array.join(' ')
end
process_text(["Hi, \n", " Are you having fun?    "])
# => "Hi, Are you having fun?"