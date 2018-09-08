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
    if !@roster.include?(grade)
      @roster[grade] = []
      @roster[grade] << student_name
    elsif @roster.include?(grade)
      @roster[grade] << student_name
    end
  end
  
  def grade(grade)
    
    
  end
  
  
end