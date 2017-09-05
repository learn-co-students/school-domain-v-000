class School

  attr_reader :school, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.has_key?(grade)
    @roster[grade] << name
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    @roster.each {|k,v| v.sort! }
  end
end
