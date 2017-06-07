class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end 

  def add_student(student_name, grade)
    if roster.include?(grade)
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_roster = {}
    roster.each do |grade, students|
      new_roster[grade] = students.sort
    end
    new_roster
  end

end