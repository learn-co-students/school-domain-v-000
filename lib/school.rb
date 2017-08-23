require('pry')

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless roster[grade]
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade|
      grade.each do |students|
        students.sort! unless students.class == Fixnum
      end
    end
  end
  @roster
end

school = School.new("Bayside High School")
