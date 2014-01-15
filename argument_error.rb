
# Prompt the user for a numerator
# exit program if it's not an integer, we're mean like that.
def get_num
  begin
    print "Enter a numerator: "
    num = Integer(gets.chomp)
  rescue ArgumentError => e
    puts "Exception is:\n \'#{e}\'"
    puts "Exception type is :\n \'#{e.class.name}\'"
    puts "Exception message is:\n \'#{e.message}\'"

    exit # by ruby program.
  end
end

# Prompt the user for a denominator
# exit program if it's not an integer, we're still mean.
def get_denom
  begin
    print "Enter a denominator: "
    denom = Integer(gets.chomp)
  rescue ArgumentError => e
    puts "Exception is:\n \'#{e}\'"
    puts "Exception type is :\n \'#{e.class.name}\'"
    puts "Exception message is:\n \'#{e.message}\'"
    exit
  end
end

num = get_num
denom = get_denom

# should check for divide by zero here!!
ratio = num/denom
puts "ratio is #{ratio}"
