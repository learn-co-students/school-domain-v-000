class School
  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if roster.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(num)
    roster[num]
  end

  def sort
    sorted = {}
    roster.each do |k, v|
      sorted[k] = v.sort
    end
    sorted
  end

end
