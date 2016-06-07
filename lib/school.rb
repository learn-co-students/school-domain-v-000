class School

#getter methods
  attr_reader :student, :grade, :add_student  #returns information stored in each of these variables
  #setter methods
  attr_accessor :roster, :name

#name initialize and settter method
  def initialize(name)
    @name = name
    @roster = {}
  end

#add_student setter method
  def add_student(student, grade)
    @student = student
    @grade = grade
    @roster[grade] = []
    @roster[grade] << student
  end


end
