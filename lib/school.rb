require 'pry'

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    unless roster.include?(grade)
      roster[grade] = []
    end
    roster[grade] << student_name
  end

  def grade(year)
    roster[year]
  end

def sort
  hash = {}
  roster.each do |grade, student_names|
  new_student_array = []
    new_student_array << student_names.sort
  hash[grade] = []
  hash[grade] << new_student_array
  hash[grade].flatten!
  end
  hash
end

end
