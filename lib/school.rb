class School
attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    roster[student_grade] ||= []
    roster[student_grade]<<student_name
  end

  def grade(grade)
    roster.fetch(grade)
  end

  def sort
    roster.each_value {|v| v.sort!}

  end
end
