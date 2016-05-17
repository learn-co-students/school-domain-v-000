# code here!
class School

  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student_name,grade)
    @roster[grade] = [] if !@roster.include?(grade)
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, student_name| student_name.sort!}
  end

end