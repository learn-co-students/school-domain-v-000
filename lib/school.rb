class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    unless @roster.include?(grade)
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(numerical_grade)
    @roster[numerical_grade]
  end

  def sort
    sorted = {}
    roster.each {|grade, students| sorted[grade] = students.sort}
    sorted
  end

end
