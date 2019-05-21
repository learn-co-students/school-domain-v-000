# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = { }
  end

  def add_student(student, grade)
    new_student = {grade => student }
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    keys = @roster.keys.sort()
    keys.each do | grade |
      @roster[grade] = @roster[grade].sort()
    end
    @roster
  end

end
