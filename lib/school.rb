class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade_number)
    @roster[grade_number] = grade(grade_number) + [student_name]
  end

  def grade(grade_number)
    @roster[grade_number] || []
  end

  def sort
    @roster.map do |grade_number, student_names|
      [grade_number, student_names.sort]
    end.to_h
  end
end