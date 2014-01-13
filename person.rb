class PersonError < StandardError
end

class Person

  attr_accessor :name, :age

  def initialize(p_name, p_age)
    @name = p_name
    @age = p_age
  end

  def valid_name!
    if self.name.length < 3 || self.name.include?('*')
      raise PersonError, "name is invalid"
    end
    true
  end

  def valid_age!
    raise PersonError, "age is invalid" if age < 0 || age > 110
  end

  def valid!
    self.valid_name!
    self.valid_age!
  end

  def to_s
    "Person: name = #{self.name}, age = #{self.age}"
  end

end
