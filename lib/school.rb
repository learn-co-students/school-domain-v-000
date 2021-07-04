class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] = roster[grade] || []
    roster[grade] << student
  end
  def grade(grade)
    roster[grade]
  end  
  def sort
    roster.each {|grade, student| roster[grade] = student.sort}
  end
end
