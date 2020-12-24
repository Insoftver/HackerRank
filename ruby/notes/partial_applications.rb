#############################################################################
### PARTIAL APPLICATIONS
#############################################################################  
# This script is related with this problem.
# https://www.hackerrank.com/challenges/ruby-partial-applications/problem

# In Partial Application, we create a lambda that takes a parameter 
# and returns a lambda that does something with it. 

# NOTE: In some cases may be very similar as if your were 
# currying the methods 
#############################################################################


#############################################################################
### Example
#############################################################################  
  # In this example the lambda multiplyFunction takes a
  # parameter, and return its product using another 
  # parameter and another lambda.
    multiplyFunction = -> (number) do
       -> (anotherNumber) do
           number * anotherNumber
       end
    end

  # multiplyFunction.(2) returns a lambda(doubler) 
  # which takes only one parameter necessary for calculation
  # and process it according with its starting calculation
    doubler = multiplyFunction.(2) # <- new lambda
    # doubler = multiplyFunction.curry.(2) <- Compare if currying!!!
  # Finally we use the lambda doubler in another process.
    puts doubler.(4) # => 8

  # => FINALLY
  # Another instance of the same lambda now with 3.
    tripler = multiplyFunction.(3)# <- new lambda
  # doubler = multiplyFunction.curry.(3) <- Compare if currying!!!
    puts tripler.(4) # => 12
#############################################################################

#