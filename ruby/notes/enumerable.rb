#############################################################################
### Enumerable
### https://ruby-doc.org/core-2.7.2/Enumerable.html
#############################################################################
  # The Enumerable mixin provides collection classes with several traversal 
  # and searching methods, and with the ability to sort. The class must 
  # provide a method each, which yields successive members of the collection. 
  # If #max, min, or sort is used, the objects in the collection must also 
  # implement a meaningful <=> operator, as these methods rely on an ordering 
  # between members of the collection.

  # NOTE: English word curry may be understood as well as 
  # 'prepare', 'dress'(as in restaurant), 'smooth'.
#############################################################################


#############################################################################
### reduce / inject
#############################################################################  
  # Combines all elements of enum by applying a binary operation, specified 
  # by a block or a symbol that names a method or operator. The inject and 
  # reduce methods are aliases. There is no performance benefit to either.
  
  # => If you specify a block, then for each element in enum the block is 
  # passed an accumulator value or memo (1st element) and the element to
  # be operated in the second place.

  # => If you specify a symbol instead, then each element in the collection 
  # will be passed to the named method of memo. 

  # In either case, the result becomes the new value for memo. At the end of 
  # the iteration, the final value of memo is the return value 
  # for the method.

  # If you do not explicitly specify an initial value for memo, then the first 
  # element of collection is used as the initial value of memo.
  
  # Some operations
    (5..10).reduce(:+) #=> 45
    (5..10).reduce(1, :*) #=> 151200

  # Same using a block and inject
    (5..10).inject { |sigma, number| sigma + number } #=> 45
    (5..10).inject(1) { |product, number| product * number } #=> 151200
  
  # Find the longest word
  longest = %w{ cat sheep bear }.inject do |lastWord, word|
     lastWord.length > word.length ? lastWord : word
  end
  longest #=> "sheep"
#############################################################################


#############################################################################
### map / collect
#############################################################################  
  # Map as the name may suggest, takes a function and maps (applies) it to a 
  # collection of values one by one and returns the collection of result.
  # On an array.
    [1,2,3].map { |x| 2*x } # => [2, 4, 6]
  
  # On an hash 0> Here is used collect
    {:a=>1, :b=>2, :c=>3}.collect { |key, value| 2*value }
    # => [2, 4, 6]

  # Note that these methods are different from each in the respect that these 
  # methods return a new collection while former returns the original 
  # collection, irrespective of whatever happens inside the block. 
#############################################################################


#############################################################################
### all
#############################################################################
  %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
  %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
  %w[ant bear cat].all?(/t/) #=> false
  [1, 2i, 3.14].all?(Numeric) #=> true
  [nil, true, 99].all? #=> false
  [].all? #=> true
  
# example from problem_solving/enumerables.rb
  def func_all(hash)
      # Check and return true if all the values within the hash are Integers
      # and are < 10. If not all values satisfy this, return false.
      hash.all? {|key,value|value.is_a? Integer && value < 10}
  end
#############################################################################


#############################################################################
### any
#############################################################################
  # example from problem_solving/enumerables.rb
  def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    hash.any? {|key,value|key.is_a? Integer}
  end
#############################################################################


#############################################################################
### none
#############################################################################
  # example from problem_solving/enumerables.rb
  def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    hash.none? {|value| element.nil?}
  end
#############################################################################


#############################################################################
### find
#############################################################################
def func_find(hash)
    # Check and return the first object that satisfies either of the following 
    # properties:
      # 1. There is a [key, value] pair where the key and value are both 
      # Integers and the value is < 20 
      # 2. There is a [key, value] pair where the key and value are both 
      # Strings and the value starts with `a`.
    hash.find do |key, value|
      (key.is_a?(Integer) && value.is_a?(Integer) && v < 20) || 
      (key.is_a?(String) && value.is_a?(String) && v.start_with?('a'))
    end
end
#############################################################################

#############################################################################
### each
#############################################################################
  def iterate_colors(colors)
    counter = 0
    values = Array.new
    colors.each do |color|
        values[counter] = color
        counter += 1
    end
    return values
  end
#############################################################################


#############################################################################
### each_with_index
#############################################################################
    colors = ['red', 'green', 'blue']
    colors.each_with_index { |item, index| p "#{index}:#{item}" }
    # => "0:red"
    # => "1:green"
    # => "2:blue"
#############################################################################