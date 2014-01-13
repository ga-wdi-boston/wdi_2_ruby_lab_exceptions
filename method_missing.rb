require_relative './person'


person1 = Person.new("Jill Smith", 22)
person1.valid!

# call a method that is not defined.
person1.no_such_method
