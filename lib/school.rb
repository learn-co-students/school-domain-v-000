# code here
class School
  attr_accessor :roster
  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(student_name, grade)
    @roster[grade] ||=[]
    @roster[grade]<< student_name
  end

  def grade(student_grade)
    @roster[student_grade]
  end
  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end

end
