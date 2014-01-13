# define a Exception class for the Person
class PersonError < StandardError
end

class Person

  attr_accessor :name, :age

  def initialize(p_name, p_age)
    @name = p_name
    @age = p_age
  end

  # validate name
  # Note: the bang at the end of the method name. This 
  # is a convention that Rails uses. Methods with a bang
  # may raise an exception if they fail.
  def valid_name!
    if self.name.length < 3 || self.name.include?('*')
      raise PersonError, "name is invalid"
    end
    true
  end

  # validate age
  def valid_age!
    raise PersonError, "age is invalid" if age < 0 || age > 110
  end

  # validate the Person
  def valid!
    self.valid_name!
    self.valid_age!
  end

  # Save/persist this person to a file or database.
  # raises an exception if the person is not valid
  def save!
    # check that that Person is valid before saving them
    # to a file, database.
    valid!

    puts "I'm being persisted, weee"
  end

  def to_s
    "Person: name = #{self.name}, age = #{self.age}"
  end

end
