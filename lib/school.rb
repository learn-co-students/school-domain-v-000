class School
  attr_reader :school, :student_name, :grade, :roster

  def initialize(school)
    @school = school
    @roster = {}

  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = []
    @roster[grade] << student_name
  end
  end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, students|
    roster[grade] = students.sort
  end
end

end
