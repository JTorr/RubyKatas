#Program for practicing Enumerable methods
#Methods used: any?, all?, chunk

ANIMALS = %w[platypus, ostrich, cheeta, zebra, baboon, cat, dog, porcupine, crab, flamingo]
ANIMALS2 = %w[ant, cat]

class AnimalSorter
  include Enumerable

  def self.meets_character_min?(animals, min_length)
    animals.all? { |word| word.length >= min_length }
  end

  def self.includes_letter?(animals, letter)
    animals.all? { |word| word.include?(letter)}
  end

  def self.exceeds_character_max?(animals, max_length)
    animals.any? { |word| word.length > max_length}
  end

  def self.sort_by_letter(animals)
    animals = animals.sort!
    chunks = animals.chunk { |word| word.ord }.each do |first_letter, word|
      puts "#{first_letter.chr} : #{word}"
    end
  end
end

puts AnimalSorter.meets_character_min?(ANIMALS, 3)
puts AnimalSorter.includes_letter?(ANIMALS2, "a")
puts AnimalSorter.exceeds_character_max?(ANIMALS, 7)
AnimalSorter.sort_by_letter(ANIMALS)
