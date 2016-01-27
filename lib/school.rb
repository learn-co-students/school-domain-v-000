# code here!

class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade] = []
    end
    roster[grade] << name

    return nil
  end

  def grade(grade)
    return roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |key, value|
      sorted[key] = value.sort
    end
    return sorted
  end



end

