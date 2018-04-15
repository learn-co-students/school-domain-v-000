class School
  attr_accessor :student, :roster
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
  roster.each do |k, v|
    roster[k] = v.sort{ |a,b| a[0]<=>b[0] }
  end
  end
  
end