class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :roster


  def add_student(grade, student)
    @roster[student] ||= []
    @roster[student] << grade

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.collect do |grade, student|
    sorted_roster[grade] = student.sort
    end
   sorted_roster
  end




end
