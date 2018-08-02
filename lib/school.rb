require 'pry'
class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  def grade(grade)
    @roster.map do |grades, name|
      if grade == grades
         name
      end
    end.compact.flatten
  end

  def sort
    new = {}
    @roster.each do |grade, name|
      new[grade] = name.sort
    end
     new
  end
end
