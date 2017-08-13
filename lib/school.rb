class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster = @roster
    if roster.key?(grade)
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, student_name| student_name.sort!
    end
  end
end
