class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, names| names.sort!}
  end
end
