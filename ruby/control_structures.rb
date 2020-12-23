
##############################################################
### EACH
##############################################################
  # Prints each array element[i] one-by-one.
    array = Array.new(10, rand(1..10))
    array.each do |i|
      puts array[i]
    end
  # or
    array.each {|i| puts array[i]}
##############################################################


##############################################################
### UNLESS
##############################################################
  # Prints array if it is not nil.
    array = Array.new
    unless array.nil?
      puts array
    end
  # or
    puts array unless array.nil?
##############################################################


##############################################################
### UNTIL
##############################################################
  # Prints array until it is nil.
    array = Array.new
    until array.nil?
      puts array
    end
  # or
    puts array until array.nil?
##############################################################


##############################################################
### INFINITE LOOP
##############################################################
  counter = 0
  loop do
  	# Some process here...
  	puts "Counter: #{counter + 1}"
    counter += 1
    break if counter >= 100
  end
##############################################################


##############################################################
### CASE
##############################################################
  object = Hash.new # Object(Class Hash)
  case object.class.to_s
    when 'Integer'
      puts "It\'s an Integer!"
    when 'Array'
      puts "It\'s an Array!"
    when 'String'
      puts "It\'s a String!"
  else
    puts "It\'s a #{object.class.to_s}!"
  end
##############################################################

##############################################################
# ONE-LINE MULTIPLE INSTRUCTIONS
##############################################################
  ### EXPLANATION: More than one instruction can be added in 
  ### one single line line if they are separated by ':'.
  ### EXAMPLE:
    puts array[1]; array[1]; puts array[2]; puts array[3];
##############################################################