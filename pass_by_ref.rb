def add_mr(name_to_change)
  puts "name_to_change.object_id  in add_mr is #{name_to_change.object_id}"
  name_to_change = "Mr. #{name_to_change}"
  puts "LOOOKYYYY!! I allocated a new object when i did an assignment"
  puts "name_to_change.object_id  in add_mr is #{name_to_change.object_id}\n\n"
end

name1 = "Joe"

puts "name1 before is #{name1}"
puts "name1.object_id is #{name1.object_id}\n\n"

mr_name1 = add_mr(name1)
puts "mr_name1.object_id is #{mr_name1.object_id}"
puts "mr_name1 after is #{mr_name1}\n\n"

puts "name1 after is #{name1}"
puts "name1.object_id is #{name1.object_id}"
