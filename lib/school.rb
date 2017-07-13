require 'pry'
class School

  attr_reader :name, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    unless @roster.has_key?(@grade)
      @roster[@grade] = []
      @roster[@grade] << @name
    else
      @roster[@grade] << @name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort()
    @roster.map do |grade, name|
      @roster[grade] = @roster[grade].sort
    end
    @roster
  end

end

school = School.new("Flatiron School")
binding.pry
