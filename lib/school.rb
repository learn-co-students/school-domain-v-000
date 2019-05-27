require 'pry'
class School
  attr_accessor :roster, :name, :grade
  attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name,grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    new_hash = {}
    roster.each do |k,v|
      new_hash[k] = v.sort
    end
    new_hash
  end
end
