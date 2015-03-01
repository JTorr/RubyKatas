class Name
  def initialize(first, last)
    @first_name = first
    @last_name = last
  end

  def to_s
    "#{@first_name}" + " " + "#{@last_name}"
  end
end

my_name = Name.new("John", "Doe")
puts my_name.to_s
