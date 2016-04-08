# code here!
require 'pry'
class School


  def initialize(name)
    @school = name
    @roster = Hash.new
  end

  def roster
    @roster
   # binding.pry
  end

  def add_student(student, grade)
    @roster[grade] = [] if roster.length == 0 || roster[grade] == nil
    @roster[grade] << student
    #binding.pry
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_h = @roster
    @roster.each do |key,value|
      new_h[key] = value.sort
    end
    new_h
  end

end
#school = School.new("Black-lion")
#school.add_student("dereje", 10)


