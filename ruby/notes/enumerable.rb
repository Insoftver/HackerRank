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
### ALL method
#############################################################################
  %w[ant bear cat].all? { |word| word.length >= 3 } #=> true
  %w[ant bear cat].all? { |word| word.length >= 4 } #=> false
  %w[ant bear cat].all?(/t/) #=> false
  [1, 2i, 3.14].all?(Numeric) #=> true
  [nil, true, 99].all? #=> false
  [].all? #=> true
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

#