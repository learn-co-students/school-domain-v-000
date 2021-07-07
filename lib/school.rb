require "pry"

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if !@roster[grade]
      @roster[grade] = [student]
    else @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    @roster.each do |key, value|
    sorted_roster[key] = value.sort
    end
    sorted_roster
  end

end
