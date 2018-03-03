class School

  def initialize(school)
    @school_name = school
    @roster = { }
  end


  def school
    @school_name
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end

    @roster
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each_value {|grade| grade.sort!}

    @roster
  end

end
