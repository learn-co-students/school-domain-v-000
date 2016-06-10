require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << name

  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |school|
        school[1].sort!
    end
  end

end