Member = Struct.new(:name, :country)
cody = Member.new("Cody", "Ireland")
julie = Member.new("Julie", "USA")
donnie = Member.new("Donnie", "Mexico")

puts julie.name
puts donnie.country
puts Member.members
puts julie == donnie
puts cody.each {|x| puts (x) }
puts cody.length
puts cody.size
