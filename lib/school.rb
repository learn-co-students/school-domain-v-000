class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    unless @roster.include?(grade)
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
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
