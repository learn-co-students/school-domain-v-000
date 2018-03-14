class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade].push(student)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.collect do |grade, students|
      roster[grade] = students.sort
    end
    roster
  end
end
