class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    return @roster
  end

  def add_student(kid, grade)
    @roster[grade] = [] unless @roster.has_key?(grade)
    @roster[grade] << kid
  end

  def grade(grade)
    return @roster.values_at(grade).flatten
  end

  def sort
    @roster.map do |grade, kid|
      @roster[grade].sort!
    end
    return @roster
  end
end
