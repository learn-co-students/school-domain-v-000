# code here!

class School

  attr_accessor :name, :roster

  def initialize(schoolname)
    @schoolname = schoolname
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end

end