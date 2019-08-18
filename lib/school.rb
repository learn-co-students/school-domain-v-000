require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)

    if @roster.keys.include?(grade)
      @roster[grade] << student_name
    else
        @roster[grade] = []
        @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name|
      name.sort!
    end
  end

end
