# code here!
class School

  attr_reader :roster,:school

  def initialize(school)
   @school = school
   @roster = {}
  end

  def add_student(name, grade)
   roster[grade] = roster[grade] || []
   roster[grade] << name
  end

  def grade(grade)
   roster[grade]
  end

  def sort
   x = {}
  roster.collect do |grade, name|
    x[grade] = name.sort
  end
 x
 end
end
