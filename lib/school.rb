class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(stu, grade)
    @roster[grade] ||= []
    @roster[grade]<< stu
  end

  def grade(stu_grade)
    @roster[stu_grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
