module TGDApp
  class ValidateModelError < StandardError
  end

  class ValidateMakeError < StandardError
  end

  class ValidateYearError < StandardError
  end

  module Validate

    def validate_make
      raise ::ValidateMakeError.new unless Car::VALID_CARS.include?(make.downcase.to_sym)
    end

    def validate_model
      raise ValidateModelError.new unless Car::VALID_CARS[make.downcase.to_sym].include?(model.downcase)
    end

    def validate_year
      raise ValidateYearError.new if year < 1960 || year > 2014
    end
  end
end