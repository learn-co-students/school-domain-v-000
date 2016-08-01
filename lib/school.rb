class School

  attr_accessor :roster, :grade, :student

  def initialize(school)
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    @roster.sort
    @roster
  end

end
