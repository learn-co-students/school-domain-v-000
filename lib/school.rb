class School
  attr_reader :roster


  def initialize(name)
    @school_name = name
    @roster = {}
  end

  def add_student(name, age)
    @roster[age] ||= []
    @roster[age] << name
  end

  def grade(age)
    @roster[age]
  end

  def sort
    sorted = {}
    roster_by_grade = @roster.sort.to_h
    roster_by_grade.each { |k,v| sorted[k] = v.sort }
    sorted
  end
end