##############################################################
### Closures (Cierre)
##############################################################
  # Closure is a function/method that:

  # => Can be passed around as an object.
  # => Remembers the value of variables no longer in scope.

  # NOTE: Procs and Lambdas are closures in Ruby. 
##############################################################


##############################################################
### Initialization
##############################################################
  # In the method closure my_lambda is executed.
    def closure(my_lambda)
       x = 100
       my_lambda.call # => Remembers x = 1.
    end

  # Here x, which is closed within my_lambda 
  # remembers its value as 1.
    x = 1
    my_lambda = -> { x + 1 }

  # We execute the closure
    puts closure(my_lambda)  #2
##############################################################