require 'pry'
# code here!
class School


  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster.include?(grade)
    @roster[grade] << student
    #NEW[grade] = [student] if !(NEW.include?(grade))
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = @roster[grade].sort
    end
    sorted
  end
end
