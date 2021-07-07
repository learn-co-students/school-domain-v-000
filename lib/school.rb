require 'pry'

class School

  attr_accessor :roster

	def initialize(school, roster = {})
    @school = school
    @roster = roster
  end

  def add_student(student, grade)
    roster[grade] ||= roster[grade] = [] # # grade key exists or, if not, create grade key with an empty array value
  	roster[grade] << student
  end

  def grade(grade)
  	return roster[grade]
  end

  def sort
    sorted_hash = {}
    roster.each do |grade, array|
      sorted_hash[grade] = array.sort
    end
  	return sorted_hash
  end

end
