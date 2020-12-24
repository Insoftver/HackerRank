##############################################################
### Lambdas
##############################################################
  # Lambdas are anonymous functions. Lambdas in Ruby are 
  # objects of the class Proc. They are useful in most of 
  # the situations where you would use a proc. 
##############################################################


##############################################################
### INITIALIZATION
##############################################################
  # Lambda with no arguments
    my_lambda = -> { puts 'Hola!' }
  # or
    my_lambda -> do
      puts 'Hola!'
    end
  # Calling(using) my lambda
    value = my_lambda.call

  # Lambda with arguments
    area = -> (a, b) { a * b }
    x = 10.0; y = 20.0

    area_rectangle = area.(x, y)
    area_triangle = 0.5 * area.call(x, y)

    puts area_rectangle #200.0
    puts area_triangle #100.0  
##############################################################


##############################################################
### EXAMPLES 
##############################################################
  # Takes an integer and square it.
    square = -> (a) {a*a}

  # Takes an integer and increment it by 1.
    plus_one = -> (a) {a+1}

  # Takes an integer and multiply it by 2.
    into_2 = -> (a) {a*2}

  # Takes two integers and adds them.
    adder = -> (a,b) {a+b}

  # Takes a hash and returns an array of hash values.
  # NOTE: hash.values gets the values according to the scope Hash[:key, :value].
    values_only = -> (a) {a.values.to_a}


    input_number_1 = rand(1..10)
    input_number_2 = rand(1..10)
    input_hash = Hash.new; 10.times {|i| input_hash[i] = rand(1..10)}

    square.(input_number_1)
    plus_one.(input_number_2)
    into_2.(input_number_1) 
    adder.(input_number_1, input_number_2)
    values_only.(input_hash)
##############################################################