class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] = [] unless roster.has_key?(grade)
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, student_array|
      student_array.sort!
    end
  end

end
