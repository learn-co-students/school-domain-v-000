class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade] # if the roster already exists, then add names
      roster[grade] << name
    else
      roster[grade] = [] # otherwise create a roster and add names
      roster[grade] = [name]
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {} # whenever data is manipulated, always better to created a new hash/array for the new data
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
