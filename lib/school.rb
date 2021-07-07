class School
  attr_accessor :roster
  attr_reader :school
  
  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << student
    else
    @roster[grade] = [student]
  end
end

  def grade(the_grade)
    @roster[the_grade]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
      end
  end
end