# code here!
class School

  attr_accessor :roster, :grade


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] unless @roster.key?(grade)
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, students| students.sort!}
  end

end
