##############################################################
### Methods
##############################################################
	# Ruby methods are very similar to functions in any 
	# other programming language. Ruby methods are used 
	# to bundle one or more repeatable statements into 
	# a single unit.
##############################################################


##############################################################
### INITIALIZATION
##############################################################
	# Define a simple method.
		def method_name 
   		# => expr..
		end

	# Define a simple method with parameters.
		def method_name (var1, var2)
   		# => expr..
		end
##############################################################


##############################################################
### PRIME - Defined argument 
##############################################################
	# Default values for the parameters
	# will be used if method is called without 
	# passing the required parameters.
		require 'prime'
		n = 7
		def prime(n = 19) # 19 is default value.
			return Prime.prime?(n)
		end
		puts prime 7
##############################################################


##############################################################
### VARIABLE ARGUMENTS (*)
##############################################################
	# Use variable *arguments when there is no way to 
	# know how many of them will be provided.
	def full_name (name, *surnames)
  	return name + ' ' + surnames.join(' ')
  	# =>  JOIN - Change array into strings.
  	# => ["Suresh", "Satyanarayana"] => 'Suresh Satyanarayana'
	end
	puts full_name('Pradeep', 'Suresh', 'Satyanarayana')
##############################################################


##############################################################
### KEYWORD ARGUMENTS 
##############################################################
	# Use variable arguments to pass hashes as arguments.
		def item_data(id, name: "No Item")
			puts "ID: #{id} - #{name}"
		end
		item_data(1) # => ID: 1 - No Item
		item_data(2, name: 'Product 02') # => ID: 2 - Product 02
	
	# Use the double splat(**) to collect all the extra
	# keyword parameters as a hash.
		def user_data (id, **options)
			puts "ID: #{id} - #{options[:name]} (Suscribed - #{options[:suscribed]})"
		end
		user_data(1) # => ID: 0 - No user, {}
		user_data(25, **{name: "Diego Mota" , suscribed: true})
##############################################################