class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade] ||= []
    roster[grade] << name
    else roster[grade] = []
    roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each_value { |students| students.sort! }
    end
  end
