# code here!
require 'pry'
class School

  def initialize(test)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << name
  

  end
end
