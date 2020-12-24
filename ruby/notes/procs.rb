##############################################################
### Procs
##############################################################
  # Proc objects are blocks of code that can be bound to a set 
  # of local variables. You can think of a proc object as a 
  # "saved" block.

  # Procs are a great way of keeping your code DRY. DRY stands 
  # for Do not Repeat Yourself.
##############################################################


##############################################################
### Initialization
##############################################################
  # In the method call_proc my_proc is executed
    def call_proc(a, b, my_proc)
      my_proc.call(a, b)
    end

  # A proc named add is created
    add = proc {|x, y| x + y}

  # The proc add is passed as parameter to the method call_proc
    puts call_proc(15, 10, add)

##############################################################

# 