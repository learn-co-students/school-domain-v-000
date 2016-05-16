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
    @roster.each {|grade, names| names.sort!}
  end

end