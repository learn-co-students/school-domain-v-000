class School
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] if @roster.none? do |k, v| 
      k == grade
    end
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

   def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end
end