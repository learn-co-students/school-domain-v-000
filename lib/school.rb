require 'pry'
class School
  attr_accessor :school, :roster
  def initialize(school)
    @roster = {}
    @school = school
  end
  def add_student(name,grade)
    #binding.pry
    roster[grade] ||= []
    # roster[grade] OR roster[grade] = empty array []
    #means if roster[grade] is nil, set roster[grade] = []
    #&& if roster[grade] exists, set roster[grade] = roster [grade]
    #roster[grade] = []
    roster[grade] << name
    #binding.pry
    #end
  end
end
