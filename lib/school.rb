class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade_input)
    @roster[grade_input]
  end

  def sort
    sorted = {}

    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
