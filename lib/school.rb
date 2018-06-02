require 'pry'
# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def name=(name)
    @name = name
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
    temp_roster = @roster.sort.to_h
    @roster.each {|grade, students| temp_roster[grade] = students.sort}
    temp_roster
  end
end
