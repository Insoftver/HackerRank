#!/bin/ruby

# This script solves the next problem.
# It works with Procs, Lambdasm, blocks and closures.
# It compares theirs usage.
# https://www.hackerrank.com/challenges/ruby-closures/problem

# The scripts prints a message in 3 different ways.
  # block_message_printer prints the message if the block exists.
  # proc_message_printer prints the message inside a Proc.
  # lambda_message_printer prints the message inside a Lambda.

message = 'Hola!'
def block_message_printer
  message = "Welcome to Block Message Printer"
  if block_given?
    yield
  end
  puts "But in this function/method message is :: #{message}"
end
# message = gets
#block_message_printer { puts "This message remembers message :: #{message}" }


def proc_message_printer(my_proc)
  message = "Welcome to Proc Message Printer"
  puts "#{my_proc.call}But in this function/method message is :: #{message}"
end
my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)


def lambda_message_printer(my_lambda)
  message = "Welcome to Lambda Message Printer"
  my_lambda.call
  puts "But in this function/method message is :: #{message}"
end
my_lambda = -> { puts "This message remembers message :: #{message}" }
#lambda_message_printer(my_lambda)
    
#