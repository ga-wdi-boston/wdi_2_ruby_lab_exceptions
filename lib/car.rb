require 'faker'
require_relative 'validate'


module TGDApp
  class Car

    include Validate

    def self.generate_vin
      ::Faker::Number.number(17)
    end

    VALID_CARS = {
      ford: %w{ focus taurus mustang},
      toyota: %w{ camry lexus corolla rav4 },
      gm: %w{ corvette lumina nova}
    }

    attr_accessor :make, :model, :year, :id

    def initialize(make, model, year)
      @make, @model, @year = make, model, year
      validate_make
      validate_model
      validate_year

      @id = self.class.generate_vin
    end
  end
end