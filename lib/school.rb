# code here!
require 'pry'

class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    #@roster = Hash.new
    @roster = Hash.new{|grades, students| grades[students] = []}
  end

  def add_student(student, grade)
    #can also use the following code:
    #@roster[grade] ||= []
    # the "||=" expression translates to a || a = b. in other words, if there is a value for a (it is non-nil or true), use a. otherwise, assign b to a and then use a. 
    @roster[grade] << student
  end

  def grade(grade)
    #@roster.each do |grades, students|
      #return students if grade == grades

      #refactored above code to the following:
      @roster[grade]
  end

  def sort
    @roster.each do |grades, students|
      students.sort!
    end
  end
end
