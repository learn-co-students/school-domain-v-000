# code here!
class School
  attr_reader name
  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name, grade)
    if roster.has_key?(grade)
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end
  def grade(grade)
    roster[grade]
  end
  def roster
    @roster
  end
  def sort
    sorted = {}
    @roster.collect do |grade, studs|
      sorted[grade] = studs.sort
    end
    sorted
  end
end