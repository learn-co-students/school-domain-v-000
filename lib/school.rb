class School
  attr_accessor :roster

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster[grade] == nil then roster[grade] = [] end
    roster[grade] << student_name
  end

  def grade(students_grade)
    roster[students_grade]
  end

  def sort
    roster.collect {|k,v| roster[k] = v.sort}
    roster
  end

end
