# code here!

class School

  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster.fetch(grade)
  end

  def sort
    roster.each_value {|s| s.sort!}
  end

end
