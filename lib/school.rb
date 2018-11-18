class School

  ROSTER = {}

  def initialize(school_name)
    @school_name = school_name
  end

  def school_name
    @school_name
  end

  def roster
    ROSTER
  end

  def add_student(student_name, grade)


    if ROSTER.include?([grade.to_i])
      ROSTER[grade.to_i] << [student_name.to_s]
    else
      ROSTER[grade.to_i] = []
      ROSTER[grade.to_i] << student_name.to_s
    end

  end


end # <--- method end
