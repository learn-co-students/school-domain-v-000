# code here!
require 'pry'

class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)

  if @roster.key?(grade) == false
    @roster[grade] = []
    @roster[grade] << name

  elsif @roster.key?(grade)
    @roster[grade] <<  name
  end
 end

 def grade(grades)
   @roster.values_at(grades).flatten!
 end

 def sort
  @roster.each do |grades , names|
    names.sort!

  end
 end
end
