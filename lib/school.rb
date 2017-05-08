class School
  def initialize(name)
    @school_name=name
    @roster = {}
  end


  def add_student(student_name,grade)
    if roster.keys.include? grade
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] = [student_name]
    end
  end

  def grade(grade_level)
    roster[grade_level]
  end

  def sort
    sorted_roster={}
    roster.each do |key, value|
      sorted_roster[key] = value.sort
    end
    sorted_roster    
  end

  def roster
    @roster
  end
end
