# code here!
class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] if !@roster.include?(grade)
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end

end
