class School
  #attr_accessor
  attr_reader :name, :roster

  def initialize(name)
    @name = name
  end

  def roster
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = []
    @roster[grade] << student_name
  end

  def grade(grade)
    #returns an array with all students with that particular grade
  end

end
