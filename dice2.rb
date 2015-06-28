def score(dice)

  score = 0
  counts = Hash.new(0)
  dice.inject(counts) { |counts, di| counts[di] += 1; counts }
  return 1000 if counts[1] >= 3
  counts.map do |di, count|
    if count >= 3
      score += (100 * di)
      count -= 3
    end

    if count > 0 && di == 5
      score += 50 * count
    elsif count > 0 && di == 1
      score += 100 * count
    end
  end
  return score
end

puts score([5,5,5,5])
