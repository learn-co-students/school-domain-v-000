class School
  attr_accessor :name
  attr_reader :roster


  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(student, grade)
    unless @roster.keys.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end


end