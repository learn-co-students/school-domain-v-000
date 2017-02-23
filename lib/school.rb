require "pry"

# code here!

class School

  attr_accessor  :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, number)
    if @roster[number] == nil
       @roster[number] = []
    end
      @roster[number] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, students|
      students.sort!
    end
    @roster
  end
end
