require 'pry'
class School

  def initialize(name_of_school)
    name_of_school = {}
    @roster = name_of_school
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value_array|
      value_array.sort!
    end
    @roster.sort.to_h
  end
end
