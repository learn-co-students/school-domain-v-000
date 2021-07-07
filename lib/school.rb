require 'pry'
# code here!
class School

  def roster
    @roster
  end

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    grades = @roster.keys
    if grades.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grades, students| students.sort!}      
  end
end
