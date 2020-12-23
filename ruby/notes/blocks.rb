##############################################################
### Blocks
##############################################################
	# Blocks are nameless methods that can be passed to another 
	# method as a parameter. Passing a block to a method is a 
	# great way of data abstraction. Blocks can either be 
	# defined with a keyword do ... end or curly braces { ... }.

	# IMPORTANT NOTE: Blocks are one of the very few exceptions 
	# to the "everything is an object" rule in Ruby. Blocks are 
	# not objects, and they can't be saved to variables.
##############################################################


##############################################################
### INITIALIZATION
##############################################################
		def block
  		puts "Start of method."
  		# Yield is a Ruby keyword that calls a block when 
  		# you use it. It’s how methods USE blocks!
			# When you use the yield keyword, the code inside the 
			# block will run & do its work.
  		yield
  		puts "End of method."
		end 
	
		# Define a block.
		block do 
  		puts "I am inside call_block method."
		end

	# =>
		# Start of method.
		# I am inside call_block method.
		# End of method.

		["Ranjan", "Ajay", "Vijay","Suresh"].each do |name|
			puts name
		end

		puts [22, 21, 19, 11, 51,31].select { |number| number.odd? }
##############################################################
