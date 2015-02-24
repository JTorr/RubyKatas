#Great party trick: convince your friends you're psychic by redefining rand.
#Well, it's great if your friends are geeks.

alias :old_rand :rand

puts old_rand(10)

def rand(num)
  srand(1234)
  old_rand(num)
end

puts rand(10)
