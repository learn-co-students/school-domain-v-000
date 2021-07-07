class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  attr_reader :name, :roster
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_grade = {}
    roster.each do |grade, students|
      sorted_grade[grade] = students.sort
    end
    return sorted_grade
  end
  
end