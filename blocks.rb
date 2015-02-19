def story
  puts "Once there was a child named"
  yield
  puts "who lived in a fairy tale village."
end

story { puts "Goldilocks" }

