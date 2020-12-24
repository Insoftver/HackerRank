##############################################################
### Currying
### Source: https://apidock.com/ruby/v2_5_5/Method/curry
##############################################################
  # This method returns a curried proc based on the method.
  # When the proc is called with a number of arguments that 
  # is lower than the method’s arity, then another curried 
  # proc is returned. Only when enough arguments have been 
  # supplied to satisfy the method signature, will the method 
  # actually be called.

  # NOTE: English word curry may be understood as well as 
  # 'prepare', 'dress'(as in restaurant), 'smooth'.
##############################################################


##############################################################
### Example 1
##############################################################
  ### EXAMPLE 1A
  # Method
  def example(a,b,c)
    [a, b, c]
  end
  # Procs to be curried.
    proc  = self.method(:example).curry
    proc02 = proc.call(1, 2) #=> #<Proc>
    proc02.call(3) #=> [1,2,3]

  ### EXAMPLE 1B
  # Method
    def example02(*args)
      args
    end
  # Procs to be curried.
    proc = self.method(:example02).curry(4)
    proc2 = proc.call(:x) #=> #<Proc>
    proc3 = proc2.call(:y, :z) #=> #<Proc>
    proc3.call(:a) #=> [:x, :y, :z, :a]
##############################################################

##############################################################
### Example 2
##############################################################  
  # In this example the lambda multiply_numbers take two 
  # parameters, and return the product of the two;
    multiply_numbers = -> (x,y) do
      x*y
    end
    # or
    multiply_numbers = -> (x,y) {x*y}

  # multiply_numbers.curry.(2) returns a lambda(doubler) 
  # which takes only one parameter necessary for calculation
  # and process it according with its starting calculation
    doubler = multiply_numbers.curry.(2) # <- new lambda
  # Finally we use the lambda doubler in another process.
    puts doubler.(4)    #8

  # => FINALLY
  # Another instance of the same lambda now with 3.
    tripler = multiply_numbers.curry.(3)# <- new lambda
    puts tripler.(4)    #12
##############################################################