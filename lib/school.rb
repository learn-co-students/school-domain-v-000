# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :name, :roster 

  def add_student(name, grade)
    @name = name
    @grade = grade
  end

  def add_student(name, grade)
    if roster.has_key?(grade)
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
    roster.each {|grade, name| name.sort!}
  end

  end