require 'pry'
class School

 attr_accessor :school_name, :roster



  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] = [] unless @roster.keys.include?(student_grade)
    @roster[student_grade] << student_name
    # @roster[student_grade] = []
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    # binding.pry
    end
  end

end
