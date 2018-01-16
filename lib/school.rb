# code here!
require 'pry'

class School
  attr_reader :name, :roster

  def initialize (name)
    @name=name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster.keys.include?(grade)
      @roster[grade] = [student_name]
    else
      @roster[grade]<<student_name
    end
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade,names| names.sort!}
    @roster.sort.to_h
  end
end
