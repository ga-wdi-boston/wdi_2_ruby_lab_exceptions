class PersonNotValidError < StandardError
end

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def valid_name?
    valid = @name.length > 2 && @name.length < 10
    raise PersonNotValidError, "Invalid name is #{@name}" unless valid
    valid 
  end

  def valid_age?
   raise PersonNotValidError, "Invalid age is #{@age}" unless @age > 0 && age < 110
  end

  def valid?
    self.valid_name? && self.valid_age
  end
end


tom = Person.new('tom', 56)
# puts "tom's name is " + (tom.valid_name? ? "valid" : "not valid")
puts "tom's name is " + (tom.valid_name? ? "valid" : "not valid")

exit

tom.valid_age? 
ed = Person.new('ed', 111)
ed.valid_age?

# puts "ed's name is " + (ed.valid_name? ? "valid" : "not valid")

