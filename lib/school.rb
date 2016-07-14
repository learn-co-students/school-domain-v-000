class School

  attr_accessor :roster, :name, :grade

  def initialize(roster)
    roster = {}
    @roster = roster
  end

  def add_student(name, grade)
    @roster[grade] = []
    @roster[grade] << "#{name}"
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort
  end


end
