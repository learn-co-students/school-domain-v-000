require 'pry'

class School
  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] == nil ? @roster [grade] = [] : @roster
    @roster [grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|key, value| @roster[key] = @roster[key].sort}
    @roster.sort_by {|key, value| key}.to_h
  end
# binding.pry
end
