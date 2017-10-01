# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def grade(school_grade)
    @roster[school_grade]
  end

  def sort
    @roster.each_value do |value|
      value.sort!
    end
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] = [] if !@roster.has_key?(student_grade)
    @roster[student_grade] << student_name
  end

end
