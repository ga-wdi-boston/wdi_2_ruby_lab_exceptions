require_relative './person.rb'

begin
  print "Enter the person's name: "
  name = gets.chomp

  print "Enter the person's age: "
  age  = Integer(gets.chomp)

  person1 = Person.new(name, age)
  person1.valid_name!
  person1.valid_age!

end

puts "person1 is #{person1}"
