module Weather

  FREEZING = 32

  def Weather.ftoc(f)
    (5.0 / 9.0 ) * (f - 32.0)
  end

  def Weather.ctof(c)
    (9.0 / 5.0) * (c + 32.0)
  end

end
