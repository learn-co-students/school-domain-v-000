class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  attr_reader :roster
  
  def add_student(student_name, grade)
    @roster[grade] = [] if !@roster.has_key?(grade)
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    @roster
  end
  
end