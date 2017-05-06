class School
  
  attr_accessor :roster
  attr_reader :name, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(student, grade)
    @grade = grade
    @student = student
    @roster[@grade] ||= []
    @roster[@grade] << @student
  end
  
  def roster
    @roster
  end
  
  def grade(grade)
    @roster.fetch(grade)
  end
  
  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end
end