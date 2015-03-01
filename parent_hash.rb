parents = Hash.new { |g, p| g[p] = [] }
parents[:julie] << "Daniel" << "Cece"
parents[:nikki] << "Alexis" << "Amaya"
parents[:vanessa] << "Ziomayra"
parents[:jackie] << "Marlin" << "Jaelyn"

puts "The parents' names are #{parents.keys}."
puts "Julie's kids are #{parents[:julie]}."
puts "Nikki's kids are #{parents[:nikki]}." 
