class School
  def initialize(name)
    @roster = {}
    @name = name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    @roster[grade] ? @roster[grade] << name : @roster[grade] = [name]
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |key, value|
      key = value.sort!
    end
    @roster
  end

end
