# code here!
require 'pry'

class School
  attr_accessor :grade, :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @grade = grade
    @name = []
    @name << name

    @name.each do
      if roster.key?(@grade) == true
        roster[@grade] = @name
      else
        roster[@grade] = []
        roster[@grade] = @name
      end
    end

  end

  def grade(grade)
    roster[@grade]
  end


end
