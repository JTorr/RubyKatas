#An exercise to illustrate the difference between break, redo and next

class Looper
  def break_loop
    iteration = 0
    (1..10).count do |num|
      iteration += 1
      puts "Skipping number 4" if num == 4
      next if iteration == 4
      puts "Redoing number 5" if num == 5 && iteration < 7 
      puts "Break at number 6" if num == 6
      puts "This is iteration # #{iteration}"
      puts "This is loop # #{num}"
      break if num == 6
      redo if num == 5 && iteration <= 7
    end 
  end
end

l = Looper.new
l.break_loop
