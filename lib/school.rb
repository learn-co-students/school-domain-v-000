# code here!
class School
require 'pry'
  def initialize(school)
    @school = school
    @roster = {}
  end

  attr_accessor :roster

  def add_student(name,grade)

    @roster[grade] ||= []

    @roster[grade] << name

  end

def grade(grade)
  @roster[grade]

end

  def sort

    @roster.each { |key,value| @roster[key]=value.sort }
    
  end
end
