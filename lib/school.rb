# code here!

class School
  attr_reader :school, :roster

  def initialize(name)
    @name = (name)
    @roster = {}
  end

  def add_student(name, grade)
    if roster.keys.include?(grade)
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, name|
    name.sort!
  end
end

end
