class School

  attr_accessor :name, :roster
  
  def initialize(name)
      @name = name
      @roster = {}
  end

  def add_student(name, grade)
      @roster[grade] = [] unless @roster.include?(grade)
      @roster[grade] << name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, names|
    sorted[grade] = names.sort
  end
  sorted  
  end
  
end