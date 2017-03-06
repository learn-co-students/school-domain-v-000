require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] ||= []
    @roster[grade] << name
  end
  end

  def grade(grades)
    @roster[grades]
  end

  def sort
    final_roster = {}
    @roster.each do |grade, names|
      final_roster[grade] = names.sort
    end
    final_roster
  end



end
