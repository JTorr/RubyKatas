children= %w[Jennifer John Brutus Mark John Peter Paul Mary Robert Isabella Jennifer John Max Nathan Peter Jennifer John John Betty Ruth Mortimer]

def drop(array, number)
  array.drop(number)
end

def first_long_name (array, length)
  array = array.drop_while { |name| name.length <= length }
  array[0]
end
 
new_class = drop(children, 3)
long_name = first_long_name(new_class, 6)
puts "Three students drop out. The new class is #{new_class}."
puts "The students line up in the following order: #{children}."
puts "The first student with a name longer than 6 characters is #{long_name}." 
