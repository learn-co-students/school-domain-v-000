# code here!

class School
  attr_accessor :grade
  attr_reader :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def school
    @school
  end
  
  def add_student(name, grade)
    if !roster.include?(grade) 
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    roster.each do |key, value|
      value.sort!
    end
  end

end
