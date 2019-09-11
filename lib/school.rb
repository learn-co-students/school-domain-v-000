require 'pry'# code herve!
# code here!
class School
  attr_accessor :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
  end

 def add_student (student, grade)
   if @roster[grade] ||= []
   @roster[grade] << student
  end
end

  def grade (grade)
    @roster[grade]
  end

  def sort
    sorted_students = {}
    @roster.each do |k, v|
      sorted_students[k]=v.sort
    end
    sorted_students
  end
end
