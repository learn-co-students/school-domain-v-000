class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(students_name, grade)
    if @roster[grade]
      @roster[grade] << students_name
    else
      @roster[grade] ||= [students_name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort.to_h
  end
end
