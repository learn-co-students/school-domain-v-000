class School
  attr_reader :name, :roster
  attr_accessor :student_name, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster.has_key?(grade)
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
    roster.each_value{|v| v.sort!}
  end
end
