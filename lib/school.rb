# code here!

class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end

  def add_student(student, grade)
    if roster.has_key?(grade)
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    roster.each do |k, v|
      v.sort!
    end
    return roster
  end

end