class MethodTestError < Exception
end

class MethodTest

  # def method_missing(method, *args, &block)
  #   puts "MethodTest#method_missing: method = #{method}"
  #   puts "MethodTest#method_missing: args = #{args}"
  # end

  # should raise an exception
  def divide_by_zero(n)
    n/0
  end

  # should raise an exception
  def raise_method_test_error
    raise MethodTestError, "hey this is an error"
  end

  def raise_error_and_ensure
    raise "Some horrible exception"
  ensure
    puts "OK, I see this horrible exception"
  end


end

def invoke_missing_method
  begin
    mt = MethodTest.new
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
mt.raise_error_and_ensure
