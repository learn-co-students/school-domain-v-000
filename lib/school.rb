require 'pry'
class School
attr_accessor :roster
attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)

    if !@roster.has_key?(grade)
      @roster[grade] = []
      @roster[grade] << student_name
    elsif
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |grade, student_names|
	     @roster[grade] = student_names.sort
     end
     @roster
   end
end
