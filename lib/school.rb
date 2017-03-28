class School 
  attr_reader :name, :roster

  
  def initialize(name) # School.new("Some School")
    @name = name 
    @roster = {}
  end 

  def add_student(student, grade)
    # ||= stands for or equals. So if used in a condition then it will check 
    # it's value or set it a new value
    roster[grade] ||= []
    roster[grade] << student 
  end

  def grade(grade)
    roster[grade]
  end 

  def sort
    new_roster = {}
    roster.each do |grade, students|
      new_roster[grade] = students.sort 
    end 
    new_roster

    roster.each do |grade, students|
      students.sort!
    end
  end 
end 
