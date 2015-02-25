require_relative 'student.rb'

s = Student.new("Jane Doe", "12345", [92, 87, 99])

puts "NAme: #{s.name}, ID: #{s.id}, Grades: "
s.grades.each do |g|
  puts g
end

File.open('student', 'w+') do |f|
  Marshal.dump(s, f)
end
