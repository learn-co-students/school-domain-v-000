# code here!
class School
  def initialize(school)
    @name = school
    @roster = {}
  end

  attr_reader :roster,:name

  def add_student(name,grade)
    @roster[grade] == nil ? roster[grade] = [name] : roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade,name|
      name.sort!
    end
  end
end