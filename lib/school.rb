# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(student_name, grade)
    if @roster.has_key?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end
  def grade(grade_number)
    @roster[grade_number]
  end
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end