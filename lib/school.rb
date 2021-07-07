class School
  
  attr_accessor :roster, :school_name
  attr_reader :grade
  
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{|key, value| key[value] = []}
  end

  def add_student(name, grade)
    @roster[grade] << name
  end
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort
    @roster.each { |grade, students| @roster[grade] = students.sort }
  end
  
end