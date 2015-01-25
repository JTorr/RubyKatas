children= %w[Jennifer John Brutus Mark John Peter Paul Mary Robert Isabella Jennifer John Max Nathan Peter Jennifer John John Betty Ruth Mortimer]

def find_name(array, string)
  array.detect { |name| name == string }
end

def find_child(array, string)
  array.find { |name| name == string }
end

detect_john = find_name(children, "John")
find_john = find_child(children, "John")

detect_bob = find_name(children, "Bob")
find_bob = find_child(children, "Bob")

if detect_john == find_john && detect_bob == find_bob
  puts "The find and detect methods are equivalent."
end

puts "Detect returns #{detect_john} and #{detect_bob}."
puts "Find returns #{find_john} and #{find_bob}."
