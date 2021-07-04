class School
  attr_accessor :student
  attr_reader :roster

  def initialize(new)
    @roster = {}
    @new = new
  end

  def add_student(new, grade)
    @roster[grade] ||= []
    @roster[grade] << new
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student|
      student.sort!
    end
  end
end
