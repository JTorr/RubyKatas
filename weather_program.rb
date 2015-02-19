require './weather'

c = 10

f = Weather.ftoc(32)

def compare(f, c)
  if f > c
    puts "#{c} degrees Celcius is below freezing."
  elsif f == c
    puts "#{c} degrees Celcius is freezing."
  else
    puts "#{c} degrees Celcius is above freezing."
  end
end

compare(f, c)
