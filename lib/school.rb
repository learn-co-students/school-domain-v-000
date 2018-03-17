class School
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if roster.keys.include?(grade)
      roster[grade] << student
    else
      roster[grade] = [student]
    end
  end

#  def add_student(student_name, grade)
#    roster[grade] ||= []
#    roster[grade] << student_name
#  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.keys.each do |num|
      roster[num].sort!
    end
    roster
  end
#  def sort
#    sorted = {}
#    roster.each do |grade, students|
#      sorted[grade] = students.sort
#    end
#    sorted
#  end
end

