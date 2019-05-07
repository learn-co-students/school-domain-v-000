# code here!

class School

  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(name, grade)
    if !@roster.include?(grade)
      @roster[grade] = []
    end
    if !@roster[grade].include?(name)
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value { |v| v.sort! }
  end

  attr_reader :roster

end
