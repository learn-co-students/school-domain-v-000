require 'pry'
class School
  attr_accessor :school, :roster
  def initialize(school)
    @roster = {}
    @school = school
  end
  def add_student(name,grade)
    #binding.pry
    roster[name] = []
    if roster[name] = nil && roster[grade] = nil
    #binding.pry
    roster[name] << grade
    #binding.pry
  elsif roster[name] = name && grade != nil
    #binding.pry
    roster[name] = []
    roster[name] << grade
    #roster[new_name].delete(new_grade_for_grade_array)
    #binding.pry
    end
  end
end
