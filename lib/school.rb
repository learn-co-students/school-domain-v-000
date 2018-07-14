require 'pry'
class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new{ |hn, g| hn[g] = [] }
  end

  def add_student(student, grade)
    @roster[grade] << student
  end

  def grade(number)
    @roster[number]
  end

  def sort
    sorted = {}
    @roster.each do |k, v|
      sorted[k] = v.sort
    end
    sorted
  end
end
