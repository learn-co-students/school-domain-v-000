require 'pry'
class School

  attr_accessor :roster
  def initialize(school)
    @school = school
    @roster = {}
  end

  def school
    @school
  end

  def add_student(name, grade)

    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value {|v| v.sort!}
    #binding.pry
  end

end
