begin
# "raises" a div by zero
  ratio = 44/0
#rescue ZeroDivisionError => e
# puts "got a zero division error"
rescue StandardError => e
  puts "Exception.class is #{e.class.name}"
  puts "Exception.message is #{e.message}"
  puts "Exception.backtrace is  #{e.backtrace}"

  exit # exit program
end

# should never get here!!!


puts "ratio of 44/0 is #{ratio}"

# Exceptions form a class hierarchy with the class Exception at the
# top.

# StandardError is a subclass of Exception that is a parent of all
# the other exception types one should or could handle.

# ZeroDivisionError is a subclass of StandardError.

# List of exceptions
# See http://www.zenspider.com/Languages/Ruby/QuickRef.html#exceptions-catch-and-throw
