require_relative './person.rb'

begin
  print "Enter the person's name: "
  name = gets.chomp

  print "Enter the person's age: "
  age  = Integer(gets.chomp)

  person1 = Person.new(name, age)
  person1.valid_name!
  person1.valid_age!

  # comment the above validations and call Person#save!
  
  # persist/save this person to a file or database.
  # person1.save!

end

puts "person1 is #{person1}"
