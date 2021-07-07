class School
  attr_reader :school, :roster

  def initialize (school, roster = {})
    @school = school
    @roster = roster
  end

  def add_student (student_name, student_grade)
    if !roster.keys.include? (student_grade)
      roster[student_grade] = []
    end
    roster[student_grade] << student_name
  end

  def grade (grade)
    roster[grade]
  end

  def sort
    roster.each_value do |value|
      value.sort!
    end
  end
end
