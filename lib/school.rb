class School
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(student, grade)
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << student
  end
  
  def roster
    @roster
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
  
end