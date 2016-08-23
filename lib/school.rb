class School
  attr_accessor :name, :roster, :grade
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
  @roster
  end

  def add_student(student, grade)
  array = []
  roster[grade] ||= array
  roster[grade] << student
  end
  
  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |key, value|
      value.sort!   
    end
  end
end
