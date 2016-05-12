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
      roster[grade] ||= []
      roster[grade] << student
      
  end



end # of class School