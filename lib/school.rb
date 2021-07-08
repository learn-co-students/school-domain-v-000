
class School

  attr_reader :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    if roster.key?(grade)
      roster[grade] << name
    else
      roster[grade] = [] << name
    end
  end

  def grade(the_grade)
    roster[the_grade]
  end

  def sort
    roster.each do |grade,student|
      roster[grade] = student.sort
    end
    roster
  end

end
