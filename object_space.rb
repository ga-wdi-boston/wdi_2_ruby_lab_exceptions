puts ObjectSpace.count_objects

"hello"
"goobye"
puts ObjectSpace.each_object(String) do |str|
  puts "str object is #{str}"
end
