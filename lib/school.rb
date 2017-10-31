class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !roster.keys.include?(grade)
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade)
    if roster.keys.include?(grade)
      return roster[grade]
    end
  end

  def sort()
    roster.map { |k, v| [k, v.sort]}.to_h
  end

end
