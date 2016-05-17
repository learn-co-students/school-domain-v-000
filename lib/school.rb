class School

  def initialize(name)
    @name = name
  end

  def roster
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = name
  end

  def grade(grade)
    @roster["grade"]
  end


end




