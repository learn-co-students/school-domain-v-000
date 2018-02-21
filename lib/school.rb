class School 
  attr_reader :name, :roster, :student_name, :grade
  
  def initialize(name)
    @name = name
    @roster = {}  
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    @roster[@grade] ||= []
    roster[@grade] << @student_name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    @roster.each do |grade, student_array|
      student_array.sort!
    end
    @roster
  end
  
end