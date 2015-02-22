require 'getoptlong'

options = GetoptLong.new(
  ["--directory", "-d", GetoptLong::REQUIRED_ARGUMENT],
  ["--size", "-s", GetoptLong::OPTIONAL_ARGUMENT]
)

options.each do |option, argument|
  puts "Option: #{option}, argument: #{argument.inspect}"
end

puts "File names: #{ARGV.join(', ')}"
