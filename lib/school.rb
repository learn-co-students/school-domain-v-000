
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.has_key? grade
    @roster[grade] << name
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.sort.map { |grade,name| [grade,name.sort] }.to_h
  end
end
