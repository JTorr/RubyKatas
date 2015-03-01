class Name
  def initialize(first, last)
    @first_name = first
    @last_name = last
  end

  def to_s
    @first_name + " " + @last_name
  end

  def method_missing(method, *args, &block)
    puts "The method #{method} is not part of the class."
  end
end

myName = Name.new("Julie", "Torres")
puts myName.initials
