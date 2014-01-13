


puts "nil's class is #{nil.class.name}"
puts "nil's object id #{nil.object_id}, ALWAYS"


puts "The NilClass ancestors #{nil.class.ancestors.join(',')}"

nil_methods = nil.methods - Object.new.methods
puts "nil's methods are #{nil_methods}"

