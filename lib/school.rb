class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
if !roster[grade]
  roster[grade] = []
 end
  roster[grade] << student
end

  def grade(grade)
   roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each_pair do |grade, student|
       sorted_roster[grade] = student.sort
     end
     sorted_roster
  end
 end
