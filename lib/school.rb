# code here!
class School
  def initialize(name)
    @name = name
  end

  ROSTER = {7 => [], 9 => [], 10 => []}

  def roster
    ROSTER
  end

  def add_student(name, grade)
    # if ROSTER.keys.include?(grade)
    #   ROSTER[grade] << name
    #   ROSTER[grade].sort
    # else
    #   ROSTER[grade] = []
    #   ROSTER[grade] << name
    #   ROSTER[grade].sort
    # end
    ROSTER[grade] << name
    ROSTER[grade] = ROSTER[grade].sort
  end

  def grade(grade)
    ROSTER[grade]
  end

  def sort
  ROSTER
  end
end
