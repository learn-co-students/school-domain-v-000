class School
 
  attr_reader :roster
 
  def initialize(school)
   @school=school
    @roster= Hash.new
  end

  def add_student(student)
    roster << student
  end
  
end