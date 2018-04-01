# code here!
require 'pry'
class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster.has_key?(grade)
       @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
     #binding.pry
    end
  end

 def grade(grade)
   @roster[grade]
  end

  def sort
    @roster.collect {|grade, student_name| student_name.sort!}
    @roster
  end
end
