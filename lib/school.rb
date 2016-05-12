# code here!

class School
  
  attr_reader :name

  def initialize (name)
    @name = name
  end

  def roster
    roster ={}
    @roster = roster
  end

  def add_student(student, grade)
      if roster.has_key?(grade)
        roster[grade] << student
      else
        roster[grade]=[]
        roster[grade] << student
      end
  end



end # of class School