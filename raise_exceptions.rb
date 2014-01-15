class MethodTestError < Exception
end

class MethodTest

  # should raise an exception
  def divide_by_zero(n)
    n/0
  end

  # Raise does 4 things.

  #   * Builds an exception object.
  #   * Sets the backtrace.
  #   * Sets the global error object $? (hardly used)

  # should raise an exception
  def raise_method_test_error
  #raise MethodTestError, "hey this is an error"
   raise MethodTestError.new("hey this is an error")
  end

  def raise_error_and_ensure
    begin
      puts "Lets raise a horrible exception and use the ensure keyword"
      raise "Some horrible exception"
      # raise Exception.new("Some horrible exception")
    rescue Exception => e
      puts "rescuing e #{e}"
    ensure
      puts "OK, I see this horrible exception"
    end
  end

  # Warning, metaprogramming here.
  # def method_missing(method, *args, &block)
  #   puts "MethodTest#method_missing: method = #{method}"
  #   puts "MethodTest#method_missing: args = #{args}"
  # end

end

def invoke_missing_method
  begin
    mt = MethodTest.new

    # MethodTest#no_such_method
    mt.no_such_method
 
  rescue NoMethodError => e
    puts "e.message = #{e.message}"
    puts "e.backtrace = #{e.backtrace}"
  end
end

# invoke_missing_method
mt = MethodTest.new
#mt.divide_by_zero(33)

# mt.raise_method_test_error

# mt.raise_error_and_ensure

invoke_missing_method
