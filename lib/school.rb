class School
  attr_accessor :roster
  attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
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
