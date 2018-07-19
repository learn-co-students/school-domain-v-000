class School
  attr_accessor :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def school
    @school
  end
  
  def roster=(roster) #writer method
    @roster = roster
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
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



