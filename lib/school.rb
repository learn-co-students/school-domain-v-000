require "pry"

class School
attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !roster[grade]
      roster[grade] = []
    end
    roster[grade] << name
  end

  def grade(number)
    roster.each do |grade, names|
      if grade == number
        return names
      end
    end
  end

  def sort
    roster.each do |grades, names|
      names.sort! do |a, b|
        a<=>b
      end
    end
  end
end
