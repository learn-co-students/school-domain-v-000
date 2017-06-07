require "pry"

# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
      @roster[grade] = [] unless @roster[grade].is_a?(Array)
      @roster[grade] << student
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.inject({}) do |hash, (key, value)|
      hash.merge key => value.sort
    end
  end
end
