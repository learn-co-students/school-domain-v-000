class School



  def initialize(name)
    @name = name
    @roster = {}
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
    @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_roster = {}
    @roster.each do|each_grade, student_array|
      new_roster[each_grade] = student_array.sort
    end
    new_roster
  end

end
