require 'pry'

class School
  def initialize(name)
    @school = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade_hash, name_arr|
      @roster[grade_hash]= name_arr.sort
    end

    @roster
  end

end

