##############################################################
### INITIALIZATION
##############################################################
  # Initialize an empty array.
    array = Array.new
    array = []

  # Initialize an array with one nil element.
    array = Array.new(1)
    array = [nil]

  # Initialize an array with two valued 10 elements.
    array = Array.new(2) {|i| i = 10}
    array = Array.new(2, 10)
    array = [10, 10]

### VARIABLES USED ON THIS PRACTICE
  # Initialize an array with 10 random 1 to 10 numbers.
    array = Array.new(10, rand(1..10))
    element = 'e'
    index = rand(1..5)
    value = 2
##############################################################


##############################################################
### INDEX
##############################################################
  # Get the value of the [index] element.
    array[index]
    array.at(index)
    
  # Get a range indicating start and end positions.
    array[1..index] # Both indices inclusive.
    array[1...index] # Last index(var = index) excluded.
  
  # Get the start_index at index and a random length of range.
    array[index, rand(1..5)]

  # Get the last two elements of the array.
    array[-1]
    array[-2]

  # Get the first element of the array.
    array.first

  # Get the last element of the array.
    array.last

  # Get the first value elements of the array.
    array.take(value)

  # Get everything but the first value elements of the array.
    array.drop(value)

##############################################################


##############################################################
### ADD
##############################################################
  # Add element to the end of array.
    array.push(element)

  # Add element to the beginning of array.
    array.unshift(element)

  # Add element at [index] of array.
    array.insert(index, element)

  # Add any two elements to the array at index.
    array.insert(index, nil, nil)
##############################################################


##############################################################
### DELETE
##############################################################
  # Delete an element from the end of the array.
    array.pop

  # Delete an element from the beggining of the array.
    array.shift

  # Delete an element at a given position.
    array.delete_at(index)

  # Delete all ocurrences of a given element.
    array.delete('e')
##############################################################


##############################################################
### SELECTION
##############################################################
### NON-DESTRUCTIVE 
  # Select all elements that are bigger than value.
    array.select {|a| a > value}

  # Reject all elements that are bigger than value.
    array.reject {|a| a > value}

  # Removes elements till the block returns false (array[i] > value).
    array.drop_while {|a| a > value} 

### DESTRUCTIVE
  # Delete all elements that are bigger than value.
    array.delete_if {|a| a > value}

  # Keep all elements that are bigger than value.
    array.keep_if {|a| a > value}
##############################################################

##############################################################
### JOIN - Changes array into strings
##############################################################
# Your code here
def full_name (name, *surnames)
  return name + ' ' + surnames.join(' ')
  # => ["Suresh", "Satyanarayana"] => 'Suresh Satyanarayana'
end
puts full_name('Pradeep', 'Suresh', 'Satyanarayana')
##############################################################


##############################################################
### CONTROL STRUCTURES
##############################################################
  ### VARIABLES USED ON THIS PRACTICE (See hashes.rb)
  user = {"Diego" => 10, "Silvia" => 20, "Alejandro" => 3
  
  ### EACH => Prints each array element[i] one-by-one.
    array.each do |i|
      puts array[i]
    end
  # or
  array.each {|i| puts array[i]}

  ### UNLESS => Prints array if it is not nil.
    unless array.nil?
      puts array
    end
  # or
    puts array unless array.nil?

  ### UNTIL => Prints array until it is nil.
    until array.nil?
      puts array
    end
  # or
    puts array until array.nil?
##############################################################
