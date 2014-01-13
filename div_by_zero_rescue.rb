# An exception handler is a block of code that 
# is executed if an exception occurs during the 
# execution of some other block of code.

# begin is a ruby keyword.
# it defines a block where one can 'handle'
# exceptions
begin  

  # "raises" a div by zero exception
  ratio = 44/0

# Raising an exception means:
#  1. Stopping normal execution of the program.
#  2. Transferring the flow-of-control to the exception handling code.
  puts "Oh no, I'm never seen. I'm so insignifcant, boo hoo"

# rescue is a ruby keyword.
# it defines a block that can handle an exception
rescue ZeroDivisionError => e
  #Most specific error handler.
  puts "In block that handles an ZeroDivision being raised"
rescue Exception => e
  # catch all execeptions
  puts "In block that handles an Exception being raised"
  # puts "Exception.class is #{e.class.name}"
  # puts "Exception.message is #{e.message}"
  # puts "Exception.backtrace is  #{e.backtrace}"
end

# should not get here!
puts "ratio of 44/0 is #{ratio}"

