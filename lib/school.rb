class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    alphabetical = {}
    roster.each do |grade, student|
      alphabetical[grade] = student.sort
    end
    alphabetical
  end

end
