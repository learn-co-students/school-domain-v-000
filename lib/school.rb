class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if !(@roster.include?(grade))
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(passed_grade)
    @roster[passed_grade]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
    @roster
  end

end
