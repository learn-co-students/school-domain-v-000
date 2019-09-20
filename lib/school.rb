class School
  attr_accessor :roster
  
  def initialize(name)
    @name=name
    @roster={}
  end
  
  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade]<<student
  end
  
  def grade(g)
    @roster[g]
  end

  def sort
    @roster.each do |grade, students_array|
      students_array.sort!
    end
    @roster
  end

end