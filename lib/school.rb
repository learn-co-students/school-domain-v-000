require 'pry'
class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster.include?(student)== false;
    roster[grade] << student 
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    reezult = []
    roster.each do |k,v|
      reezult = v.sort
      roster[k] = reezult
    end
  end
end