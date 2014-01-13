def get_num
  retry_count = 0
  begin
    print "Enter a numerator: "
    num = Integer(gets.chomp)
  rescue ArgumentError => e
    exit if retry_count > 2
    retry_count += 1

    puts "Exception is:\n \'#{e}\'"
    puts "Exception type is :\n \'#{e.class.name}\'"
    puts "Exception message is:\n \'#{e.message}\'"
    # puts "Exception backtrace is:"
    # puts e.backtrace

    retry
  end
end

def get_denom
  retry_count = 0
  begin
    print "Enter a denominator: "
    denom = Integer(gets.chomp)
  rescue ArgumentError => e
    exit if retry_count > 2
    retry_count += 1

    puts "Exception is:\n \'#{e}\'"
    puts "Exception type is :\n \'#{e.class.name}\'"
    puts "Exception message is:\n \'#{e.message}\'"
    # puts "Exception backtrace is:"
    # puts e.backtrace

    retry
  end
end

num = get_num
denom = get_denom

# should check for divide by zero here!!
ratio = num/denom
puts "ratio is #{ratio}"
