class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def add_student(name, grade)
    @roster[grade] = Array.new if !@roster.include?(grade)
    @roster[grade] << name
  end

  def grade(grade)
    @roster.values_at(grade).flatten
  end

  def sort
    @roster.collect { |grade, students| [grade, students.sort] }.to_h
  end
end
