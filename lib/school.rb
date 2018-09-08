class School
 
  attr_reader :roster
 
  def initialize(school)
   @school=school
    @roster= Hash.new
  end
  
  def roster=(roster)
    @raoster = roster
  end

  def add_student(student_name, grade)
    @roster[grade] = Array.new << student_name
  end
  
end