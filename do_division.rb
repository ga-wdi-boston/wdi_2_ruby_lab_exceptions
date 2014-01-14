def get_num
  print "Enter a numerator: "
  num = Integer(gets.chomp)
end

def get_denom
  begin
    print "Enter a denominator: "
    denom = Integer(gets.chomp)
  rescue ZeroDivisionError => e
    puts "Can't divide by zero!, exception is \'#{e}\'"
    retry
  end
end

begin
  num = get_num
rescue ArgumentError => e
  puts "Exception is:\n \'#{e}\'"
  puts "Exception type is :\n \'#{e.class.name}\'"
  puts "Exception message is:\n \'#{e.message}\'"
  # puts "Exception backtrace is:"
  # puts e.backtrace
  retry
end


class MyException < Exception
end

begin
  denom = get_denom

rescue ArgumentError => e
  puts "Exception is:\n \'#{e}\'"
  puts "Exception type is :\n \'#{e.class.name}\'"
  puts "Exception message is:\n \'#{e.message}\'"
  # puts "Exception backtrace is:"
  # puts e.backtrace
  retry
rescue  Exception => e
  # Generalized exception
  puts "Exception is:\n \'#{e}\'"
  puts "Exception type is :\n \'#{e.class.name}\'"
  puts "Exception message is:\n \'#{e.message}\'"
  # puts "Exception backtrace is:"
  # puts e.backtrace
  puts "Exception message is:\n \'#{e.message}\'"
end

ratio = num/denom
puts "Ratio is #{ratio}"
