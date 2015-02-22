begin
  print "Enter the numerator: "
  n = gets
  print "Enter the denominator: "
  d = gets
  puts n.to_i / d.to_i
rescue
  puts "Denominator cannot be zero. Please re-enter denominator."
  d = gets
  puts n.to_i / d.to_i
end
