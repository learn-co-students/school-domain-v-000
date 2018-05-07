class School
  attr_accessor
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    sorted_roster = {}
    @roster.each do |grade, student_array|
      sorted_roster[grade] = student_array.sort
    end
    sorted_roster
  end
  
end