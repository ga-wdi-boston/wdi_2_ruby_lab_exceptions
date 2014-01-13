def get_num
  begin
    print "Enter a numerator: "
    num = Integer(gets.chomp)
  rescue ArgumentError => e
    puts "Exception is:\n \'#{e}\'"
    puts "Exception type is :\n \'#{e.class.name}\'"
    puts "Exception message is:\n \'#{e.message}\'"
    # puts "Exception backtrace is:"
    # puts e.backtrace

    exit
  end
end

def get_denom
  begin
    print "Enter a denominator: "
    denom = Integer(gets.chomp)
  rescue ArgumentError => e
    puts "Exception is:\n \'#{e}\'"
    puts "Exception type is :\n \'#{e.class.name}\'"
    puts "Exception message is:\n \'#{e.message}\'"
    # puts "Exception backtrace is:"
    # puts e.backtrace

    exit
  end
end

num = get_num
denom = get_denom

# should check for divide by zero here!!
ratio = num/denom
puts "ration is #{ratio}"
