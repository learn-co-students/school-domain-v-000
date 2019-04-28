class School
  attr_reader :roster, :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student=(name, age)
    @name = name
    @age = age
  end

  def add_student(name, age)
    unless @roster.keys.include?(age)
      @roster[age] = []
    end
    @roster[age] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end
  end
end
