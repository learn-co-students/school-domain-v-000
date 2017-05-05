class School
  attr_accessor :name, :student, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << student
    else
      roster[grade] << student
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, student|
      sorted_roster[grade] = student.sort
    end
    sorted_roster
  end

end
