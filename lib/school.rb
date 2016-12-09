# code here!
class School
  attr_reader :name

  def initialize (name)
    @name = name
  end

  ROSTER = {}

  def roster
    ROSTER
  end

  def add_student (student, grade)
    if ROSTER.has_key?(grade)
      ROSTER[grade] << student
    else
      ROSTER[grade] = [student]
    end
  end

  def grade (grade)
    
  end

  def sort
    
  end
end