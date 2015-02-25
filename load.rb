require_relative 'student.rb'

File.open('student') do |f|
  @s = Marshal.load(f)
end

puts "Name: #{@s.name}, Id: #{@s.id}, Grades: "
@s.grades.each do |g|
  puts g
end
