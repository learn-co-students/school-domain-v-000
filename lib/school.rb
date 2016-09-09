class School
  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  attr_reader :roster

  def add_student(student, grade)
    roster[grade] ||= roster[grade] = []
    roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|key, value| value.sort!}
  end
end
