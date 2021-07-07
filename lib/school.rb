# code here!
class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  def grade(grade)
    @roster[grade].collect do |student|
      student
    end
  end
  def sort
    @roster.collect do |grade, students|
      students.sort!
    end
    @roster
  end
end
