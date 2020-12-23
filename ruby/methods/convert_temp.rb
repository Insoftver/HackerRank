def convert_temp(temp, input_scale: 'celsius', output_scale: "celsius")
	# puts "t= #{temp}, in= #{input_scale}, out= #{output_scale}."
	case input_scale.downcase
		when 'celsius'
			case output_scale
				when 'fahrenheit'
					return (1.8*temp) + 32
				when 'kelvin'
					return temp + 273
				else
					return temp
			end	
		when 'fahrenheit'
			case output_scale
				when 'celsius'
					return 0.555555556*(temp-32)
				when 'kelvin'
					return (0.555555556*(temp-32)) + 273
				else
					return temp
			end	
		when 'kelvin'
			case output_scale
				when 'celsius'
					return temp - 273
				when 'fahrenheit'
					return (1.8 * (temp-273)) + 32
				else
					return temp
			end	
	end
end


#puts  convert_temp(1) # => 0
puts convert_temp(1, input_scale: 'celsius', output_scale: 'fahrenheit')
puts convert_temp(1, input_scale: 'celsius', output_scale: 'kelvin')
puts convert_temp(1, input_scale: 'fahrenheit')
puts convert_temp(1, input_scale: 'fahrenheit', output_scale: 'kelvin')
puts convert_temp(1, input_scale: 'kelvin')
puts convert_temp(1, input_scale: 'kelvin', output_scale: 'fahrenheit')