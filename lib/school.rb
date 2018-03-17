# code here!
class School
  attr_accessor :school_name
  
  def initialize(school_name)
    @roster = {}
  end

  def roster
    @roster
  end  

  def add_student(student, grade)
    @student = student
    @grade = grade
    @roster[@grade] ||= []
    @roster[@grade] << @student
  end
  
  def grade(num)
    @num = num
    @roster[@num]
  end

  def sort
    sorted = {}
    @roster.each {|grade, students|
      sorted[grade] = students.sort!
    }
  end
end