# code here!
class School 
  
  attr_reader :name
  attr_accessor :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(student_name, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end    
  end

end
