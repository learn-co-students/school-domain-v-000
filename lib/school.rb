# code here!
class School

  def initialize(name)
    @roster = {}
    @name = name
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.collect do |grade, name|
      sorted[grade] = name.sort
    end
    sorted
  end

end
