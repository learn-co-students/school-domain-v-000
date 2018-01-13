# code here!
class School

  attr_reader :school, :roster

  STUDENT = []

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
      @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_value(&:sort!)
end
end
