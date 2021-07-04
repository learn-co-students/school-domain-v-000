class School

  def initialize(school)
    @school = school
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      then @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map { |k,v| [k,v.sort]}.to_h
  end

end
