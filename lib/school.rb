require 'pry'
class School
  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    # if !@roster.keys.include?(grade)
    #   @roster[grade] = []
    # end

    @roster[grade] ||= @roster[grade] = []


    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student_list|
      student_list.sort!
    end
  @roster
  end


end# code here!
