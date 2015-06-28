def test_rescue_clause
  result = nil
  begin
    fail "Oops"
  rescue StandardError => ex
    result = :exception_handled
  end
end

puts test_rescue_clause
