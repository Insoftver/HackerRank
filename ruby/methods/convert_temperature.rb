#!/bin/ruby

# This script converts among temperatures.
# The function is expected to return a FLOAT.

# The function accepts: 
  # =>  temp(Integer), temperature to convert.
  # =>  inputScale(String), default => 'celsius'
  # =>  outputScale(String), default => 'celsius'

def convert_temperature(temp, inputScale: 'celsius', outputScale: "celsius")
  inputScale.downcase!
  outputScale.downcase!
  if inputScale == outputScale
    return temp
  else
    case inputScale
      when 'celsius'
        if outputScale == 'fahrenheit' then return (1.8*temp)+32 else return temp+273 end
      when 'fahrenheit'
        if outputScale == 'celsius' then return 0.56*(temp-32) else return (0.56*(temp-32))+273 end
      when 'kelvin'
        if outputScale == 'celsius' then return temp-273 else return (1.8*(temp-273))+32 end
    end
  end
end

# USAGE

# => puts  convert_temperature(1) 
# => 1

# => puts convert_temperature(1, outputScale: 'fahrenheit')
# => 33.8

# => puts convert_temperature(1, outputScale: 'kelvin')
# => 274

# => puts convert_temperature(1, inputScale: 'fahrenheit')
# => -17.360000000000003

# => puts convert_temperature(1, inputScale: 'fahrenheit', outputScale: 'kelvin')
# => 255.64

# => puts convert_temperature(1, inputScale: 'kelvin')
# => -272

# => puts convert_temperature(1, inputScale: 'kelvin', outputScale: 'fahrenheit')
# => -457.6

#