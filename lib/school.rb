class School

  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map{|a,b| [a,b.sort]}.to_h
  end
end
