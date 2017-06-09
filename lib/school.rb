class School

  def initialize(school)
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    elsif
      @roster[grade] =[]
      @roster[grade] << name
    end
  end

  def grade(gr)
    @roster[gr]
  end

  def sort
    @roster.each_value {|value| value.sort!}
    return @roster
  end
end
