require "pry"
class School
  attr_accessor :roster
  def initialize(school)
    @school = school
    @roster = {}
  end
  def add_student(name, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] << "#{name}"
  end
  def grade(grade)
    @roster[grade]

  end
  def sort
    #sorted_roster = {}
    @roster.each do |grade,names|
      names.sort!
      #sorted_roster[grade] = names.sort
      #build hash out
    end
    #sorted_roster
  end
end
