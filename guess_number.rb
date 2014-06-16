


def guess_number(guess)
  num_of_tries = 2
  begin
    print "Enter a number btw 1 and 5: "
    num = gets.chomp

    raise ArgumentError.new("num is wrong") if num != guess

  rescue ArgumentError => my_exception
    puts "#{my_exception.message}"

    num_of_tries -= 1
    puts "youve got #{num_of_tries} left"
    retry if num_of_tries > 0 
  end
end


guess_number(3)