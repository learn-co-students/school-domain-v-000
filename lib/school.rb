# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade_num)
    @roster[grade_num] = [] if !@roster.include?(grade_num)
    @roster[grade_num] << name
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.each {|key, value| value.sort!} #mutates the arrays in the @roster
    @roster
  end

end