# code here!
class School
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    if !(@roster.include?(grade))
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(value)
    @roster[value]
  end

  def sort
    Hash[@roster.sort.map {|a, b| [a, b.sort]}]
  end

end
