##############################################################
### INITIALIZATION
##############################################################
  # Create a string from a literal.
    string = "Hello." # => Hello.

  # Create an empty string.
    empty_string = String.new # => Nil

  # Copy a string to a new variable.
    copied_string = String.new(string)  # => Hello.

  # Print a string
    puts 'Hello World and others!'
  # or
    puts "Hello World and others!"

  # Print HERE Document
  # => https://en.wikibooks.org/wiki/Ruby_Programming/Here_documents
    puts <<-Hello
Hello World and others!
    Hello
##############################################################


##############################################################
### ACCESS TO STRINGS
##############################################################
  # VARIABLE
    string = "Hello World!"
  
  # Access by index
    string[string.size-1] # => "!"
    
    # => 1st character from the end of the string.
    string[-1] # => "!"
  
    string[-2] # => "d" => 2nd last character.
  
    string[0] # => "H" => 1st character.

  # Access to portions by index
    string[0,4] # => "Hell" => First four characters.
    
    # 3 characters from index 6 (0-indexing).
    string[6,3] # => "Wor"
    
    # 1 characterfrom the end of the string.
    string[-1, 1] # =>  "!"
  
  # VARIABLE
    string = "Hello"
    
  # Append by assigning at the end of the string
    string[string.size, 0] = " World!"
    # => "Hello World!"

  # Insert a comma after the 5th position
    string[5, 0] = "," # => "Hello, World!"

  # Delete 6 characters starting from index 5. 
    string[5, 6] = "" # => "Hellod!" 

  # Replace the string starting from index 5 and of length 1 
  # with the given string. 
    string[5,1] = " World" # => "Hello World!"
##############################################################


##############################################################
### METHODS
##############################################################
  #------------------ CHOMP -------------------------
  # Returns a new string with the given separator 
  # removed from the end of the string (if present)
    "Hello World!  \r\n".chomp # => "Hello World!  "
    "Hello World!".chomp("orld!") # =>  "Hello W"
    "hello \n there".chomp # => "hello \n there"
  #--------------------------------------------------


  #------------------ STRIP -------------------------
  # Returns a new string with the leading and 
  # trailing whitespace removed.
    "    hello    ".strip # => "hello"
    "\tgoodbye\r\n".strip # => "goodbye"
  #--------------------------------------------------


  #------------------- CHOP -------------------------
  # Returns a new string with the last character removed
    "string\n".chop # => "string"
    "string".chop # => "strin"
  #--------------------------------------------------


  #------------------- INCLUDE-----------------------
  # Returns true if strING contains the given string 
  # or character.
    "srting".include? "rt" # => true
    "srting".include? "tr" # => false
  #--------------------------------------------------  


  #-------------------- GSUB ------------------------
  # Returns a new string with all the occurrences 
  # of the pattern substituted for the second argument: 
  # The pattern is typically a Regexp, but a string 
  # can also be used.
    "hello".gsub(/[aeiou]/, '*') #=> "h*ll*"
    "hello".gsub(/([aeiou])/, '') #=> "hll
  # gsub can be used as well as a block    
    "hello".gsub(/#{word}/) {|match| strike(match)}
  #--------------------------------------------------  
##############################################################


##############################################################
### INFORMATION
##############################################################
  # PRINTING INFO
    print("My String's encoding: ", string.encoding.name) 
    # => My String's encoding: UTF-8 => nil 
  
    print("My String's size: ", string.size)
    # => My String's size: 7 => nil 

    print("My String's bytesize: ", string.bytesize)
    # => My String's bytesize: 9 => nil

  # VARIABLE
    string = "With ♥!"

    # Iterates over the individual bytes
      string.each_byte {|value| puts value}
      # 87
      # 105
      # 116
      # 104
      # 32
      # 226
      # 153
      # 165
      # 33

    # Iterates over single characters
      string.each_char {|value| puts value}
      # W
      # i
      # t
      # h
      #  
      # ♥
      # !

    # Iterates over ordinal values
      string.each_codepoint {|value| puts value}
      # 87
      # 105
      # 116
      # 104
      # 32
      # 9829
      # 33

    # Iterates over the lines
      string.each_line {|value| puts value}
      #  => "With ♥!" 
##############################################################


##############################################################
### CALL FROM METHODS
##############################################################
    def single_quote
      'Hello World and others!'
    end
    puts single_quote

    def double_quote
      "Hello World and others!"
    end
    puts double_quote

    def here_doc
      <<-Text 
Hello World and others!
      Text
    end
    puts here_doc
##############################################################