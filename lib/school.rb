# code here!
class School
  attr_reader :school, :roster

  def initialize(school, roster ={})
    @school = school
    @roster = roster
  end

  def add_student(student, grade)
    if !@roster[grade]   #check if @roster[grade] is nil
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
