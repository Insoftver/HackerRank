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
### Example
##############################################################
  ### EXAMPLE01
  # Method
  def example(a,b,c)
    [a, b, c]
  end
  # Procs to be curried.
    proc  = self.method(:example).curry
    proc02 = proc.call(1, 2) #=> #<Proc>
    proc02.call(3) #=> [1,2,3]

  ### EXAMPLE02
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