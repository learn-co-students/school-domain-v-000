# code here!
class School
  attr_accessor :name, :grade, :roster

  def initialize (school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade] == nil
      roster[grade]=[]
      roster[grade] << name
    else
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |keys, values|
      values.sort! 
    end
  end

end
