class Student
  attr_reader :name, :id, :grades
  def initialize(name, id, grades)
    @name = name
    @id = id
    @grades = grades
  end
end
