class School
  attr_accessor :roster
  attr_reader :name 
  
  def initialize(name)
    @name = name
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
    ret = {}
    @roster.each {|grade, student| ret[grade] = student.sort}
    ret
  end
end