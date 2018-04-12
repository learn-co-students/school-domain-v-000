class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(student, grade)
      @roster[grade] ||= []
      @roster[grade] << student
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.collect do |grade, students|
      students.sort!
    end
    @roster
  end
end
