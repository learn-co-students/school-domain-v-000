class School
  attr_reader :name, :roster

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
    temp_roster = {}
    @roster.each do |score, students|
       temp_roster[score] = students.sort
    end
  temp_roster   
  end
  
end