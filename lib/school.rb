require 'pry'
class School
  attr_accessor :name
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name,grade)
    @student_name = student_name
    @grade = grade

    if !roster.keys.include?(@grade)
      @roster[@grade] = []
      @roster[@grade] << @student_name
    else
      @roster[@grade] << @student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster= Hash[@roster.sort_by { |grade, name| grade}]
    @roster.collect {|grade,name| name.sort!}
    @roster
  end

end
    #binding.pry
