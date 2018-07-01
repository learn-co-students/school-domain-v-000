require 'pry'
class School
  attr_reader :roster, :school

  def initialize(school_name)
    @school = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
  end
end
