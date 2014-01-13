# Prompt the user for a numerator
# Give them 4 chances to enter a valid integer.
def get_num
  retry_count = 0
  begin

    print "Enter a numerator: "
    num = Integer(gets.chomp)

  rescue ArgumentError => e
    exit if retry_count > 2
    retry_count += 1

    puts "Exception is:\n \'#{e}\'"

    # retry is a Ruby keyword that will retry
    # the ruby code in the block that raised the 
    # exception.
    # it will try to continue running at statement
    # that caused the exception.
    # line: 8
    retry
  end
end

# Prompt the user for a denomintor
# Give 3 chances to enter a valid integer.
def get_denom
  retry_count = 0
  begin
    print "Enter a denominator: "
    denom = Integer(gets.chomp)
  rescue ArgumentError => e
    retry_count += 1
    exit if retry_count > 2

    puts "Exception is:\n \'#{e}\'"

    retry
  end
end

num = get_num
denom = get_denom

# should check for divide by zero here!!
ratio = num/denom
puts "ratio is #{ratio}"
