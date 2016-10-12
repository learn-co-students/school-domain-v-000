# code here!
class School

  def initialize(name)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    !@roster.include?(grade) ? @roster[grade] = [] : nil
    @roster[grade] << name
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    hashes = {}
    @roster.each { |grade, students| hashes[grade] = students.sort }
    hashes
  end

end
