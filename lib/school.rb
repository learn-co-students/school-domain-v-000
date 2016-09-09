class School
  attr_reader :name, :roster

  def initialize(name)
    @name= name
    @roster = {}
  end
def add_student(name, grade)
  if @roster.has_key?(grade)
    @roster[grade] << name
  else
    @roster[grade] = [name]
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end

end# code here!
