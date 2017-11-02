# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name
  attr_reader :roster

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade].push(name)
  end

  def grade(desired_grade)
    return @roster[desired_grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
    return @roster
  end
end
