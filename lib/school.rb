# code here!
class School

  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster.merge!(grade => [student])
    end
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each {|grade, student| student.sort!}
  end

end
