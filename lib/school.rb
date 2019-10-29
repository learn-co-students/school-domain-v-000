class School
  def initialize(name)
    @name = name
    @roster = {}
  end

attr_accessor :name, :roster

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    @roster[@grade]||= []
    @roster[@grade] << @student_name
  end

  def grade(grade)
    @grade = grade
    roster[@grade]
  end

  def sort
    @roster.each do |grade, student|
      student.sort!
    end
    @roster 
  end

end
