class School

  attr_accessor :roster

  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, students|
      students.sort!
    end
    @roster
  end

end
