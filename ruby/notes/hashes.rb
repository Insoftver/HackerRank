#############################################################################
### INITIALIZATION
#############################################################################
  # Initialize an empty hash.
    hash = Hash.new

  # Initialize an empty hash with default value of every set to 1.
    hash = Hash.new(1)
  # or
    hash = Hash.new
    hash.default = 1

  # Initialize a hash according to :name = 'Diego', :lastname = 'Mota'.
    hash = {name: 'Diego', lastname: 'Mota'}
  
  # Initialize a hash according to "name" = 'Diego', "lastname" = 'Mota'.
    hash = {"name" => 'Diego', "lastname" => 'Mota'}
  # or
    hash = Hash.new
    hash["name"] = 'Diego'
    hash["lastname"] = 'Mota'
#############################################################################


#############################################################################
### ADD
#############################################################################
  ### VARIABLES USED ON HERE
    key = 1
  
  # Add a new key-value pair.
    hash[key]= 'Hola' # => hash[1] = 'Hola'
  # or
    hash.store(key, 'Hola') exit
    # => hash[1] = 'Hola'
#############################################################################


#############################################################################
### DELETE
#############################################################################
  # Delete the key-value pair.
    hash.delete(key)
#############################################################################


#############################################################################
### SELECTION
#############################################################################
  ### VARIABLES USED ON HERE
    hash = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}

  ### NON-DESTRUCTIVE 
    # Select all pair elements.
      hash.select {|key, value| key % 2 == 0} # ==
      # => {2 => 4, 4 => 16}

    # Reject all odd or non even elements.
      hash.reject {|key, value| key % 2 != 0} # !=
      # => {2 => 4, 4 => 16}

    # Remove elements until key = 1
      hash.drop_while {|key, value| key < 2}
      # => [[2, 4], [3, 9], [4, 16], [5, 25]] 

  ### DESTRUCTIVE
    # Keep all pair elements. (Delete odds)
      hash.keep_if {|key, value| key % 2 == 0} # ==
      # => {2 => 4, 4 => 16}

      # Delete all odd or non even elements.
      hash.delete_if {|key, value| key % 2 != 0} # !=
      # => {2 => 4, 4 => 16}
#############################################################################


#############################################################################
### collect => Referenced as well on enumerable.rb
#############################################################################
  # Map as the name may suggest, takes a function and maps (applies) it to a 
  # collection of values one by one and returns the collection of result.
    {:a=>1, :b=>2, :c=>3}.collect { |key, value| 2*value }
    # => [2, 4, 6]

  # Note that these methods are different from each in the respect that these 
  # methods return a new collection while former returns the original 
  # collection, irrespective of whatever happens inside the block. 
#############################################################################


#############################################################################
### CONTROL STRUCTURES
#############################################################################
  ### VARIABLES USED ON HERE
  user = {"Diego" => 10, "Silvia" => 20, "Alejandro" => 30}
  
  # Iterating on each element
    user.each do |key, value|
      puts key
      puts value
    end
  # or
    user.each do |array|
      key = array[0]
      value = array[1]
    end
#############################################################################