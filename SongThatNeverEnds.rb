#Utilizing Ruby's cycle method to reproduce an annoying song.

LYRICS = %w{This is the song that never ends, it just goes on and on my friend. Some people started singing it not knowing what it was. And they'll continue singing it forever just because...}

def song
  LYRICS.cycle do |word|
    puts word
    break if word == "because..."
  end
end

def prompt
  print "Continue torture?"
  input = gets.chomp
  if input == "yes"
    song
    prompt
  end
end

puts "Beginning torture."
song
prompt
