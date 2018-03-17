class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster.keys.include?(grade) 
        @roster[grade] = []
        @roster[grade].push(name)
    else
      @roster[grade].push(name)
    end
  end

  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    @roster.each {|grade, student_array|
      student_array.sort!
    }
    @roster
  end

end

