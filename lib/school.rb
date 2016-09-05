require 'pry'

class School

attr_accessor :add_student
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
    @roster[grade]
  end

  def sort
    new_roster = {}
    @roster.each do |k_grade, v_name|
      new_roster[k_grade] = v_name.sort
    end
    new_roster
  end

end
