children= %w[Jennifer John Brutus Mark John Peter Paul Mary Robert Isabella Jennifer John Max Nathan Peter Jennifer John John Betty Ruth Mortimer]

def count(array)
  array.count
end

def name_count(array, name)
  name = name.to_s
  array.count(name)
end

def names_with_letter(array, letter)
  array.count { |name| name.include?(letter) }
end 

total = count(children)
jennifer = name_count(children, "Jennifer")
j = names_with_letter(children, "J") + names_with_letter(children, "j") 

puts "The class has a total of #{total} children. #{j} of them have names including the letter \"j\", and #{jennifer} of the children are named \"Jennifer\""

