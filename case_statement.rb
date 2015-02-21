print "Enter a letter grade: "
grade = gets.chomp
allowance = 0
grounded = false

case grade
  when "A"
    allowance += 10
  when "B"
    allowance += 5
  when "C"
    allowance += 2
  when "D"
    allowance 
  when "F"
    grounded = true
end 

puts "You have $#{allowance}."
puts "You are grounded." if grounded == true
