# code here!
class School
  attr_accessor :roster, :School

  def initialize(school)
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless roster.include?(grade)
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    sorted = {}
    @roster.each do |grade, name|
      sorted[grade] = name.sort
  end
  sorted
end
end
