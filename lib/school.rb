class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.has_key?(grade)
    @roster[grade] << name
  end

  def grade(level)
    @roster[level]
  end

  def sort
    sorted = {}
    @roster.each do |grade, names| 
      sorted[grade] = names.sort
    end
    sorted
  end

end