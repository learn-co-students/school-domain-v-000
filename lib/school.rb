# code here!

class School
  # attr_accessor :roster
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade]<<student_name
    else
      @roster[grade] = []
      @roster[grade]<<student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_roster = {}
    sorted_roster = @roster.sort.to_h
    sorted_roster.each do |grade, names|
      sorted_roster[grade] = names.sort
    end
    sorted_roster
  end

end
