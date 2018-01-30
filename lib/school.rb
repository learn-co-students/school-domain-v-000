class School
  ROSTER = {}
  
  def initialize(school)
    @school = school
  end
  
  def roster=(roster)
    @roster = roster
  end
  
  def roster
    ROSTER
  end
  
  def add_student(student_name,grade)
    @student_name = student_name
    @grade = grade
    if ROSTER[@grade].kind_of?(Array)
      ROSTER[@grade] << @student_name
    else 
      ROSTER[@grade] = []
      ROSTER[@grade] << @student_name
    end
  end
  
  def grade(grade)
    ROSTER[grade]
  end
  
  def sort
    ROSTER.sort_by {|_key, value| value}.to_h
  end
end