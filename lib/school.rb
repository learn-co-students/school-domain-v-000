require "pry"

class School

  attr_accessor :name, :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] == nil then @roster[grade] = []end
    if !@roster.values.include?(student)
      then @roster[grade] << student end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    roster.keys.collect do |grade|
      roster[grade].sort!
      # binding.pry
    end
    roster
  end

end
