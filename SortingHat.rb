#Program for practicing Enumerable methods
#Methods used: chunk, partition
HOGWARTS = [
  {:name => "Harry Potter", :house => "Gryffindor"},
  {:name => "Ron Weasley", :house => "Gryffindor"},
  {:name => "Vincent Crabbe", :house => "Slytherin"},
  {:name => "Cedric Diggory", :house => "Hufflepuff"},
  {:name => "Hermoine Grainger", :house => "Gryffindor"},
  {:name => "Nevil Longbottom", :house => "Gryffindor"},
  {:name => "Cho Chang", :house => "Ravenclaw"},
  {:name => "Draco Malfoy", :house => "Slytherin"},
  {:name => "Luna Lovegood", :house => "Ravenclaw"}
]


class SortingHat
  include Enumerable

  def self.chunk_by_house(school)
    school.chunk { |school| school[:house]}.each do |house, students|
      names = students.map { |s| s[:name]}
      puts "#{house} : #{names.join(", ")}"
    end
  end

  def self.chunk_by_gryffindor(school)
    gryffs, non_gryffs = school.partition { |school| school[:house] == "Gryffindor"}
    gryffs = gryffs.map { |g| g[:name]}
    non_gryffs = non_gryffs.map { |n| n[:name]}
    puts "Gryffindors: #{gryffs.join(', ')}"
    puts "Non-Gryffindors: #{non_gryffs.join(', ')}"
  end
end

SortingHat.chunk_by_house(HOGWARTS)
puts "=" * 50
SortingHat.chunk_by_gryffindor(HOGWARTS)
