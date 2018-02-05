class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.keys.each do |key|
      roster[key].sort!
    end
    roster
  end

end
