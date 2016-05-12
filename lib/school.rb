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
      if roster.empty?
        roster[grade_level] = []
        roster[grade_level] << grade
        roster[grade] << student
      elsif roster.has_key?(grade)
        roster[grade] << student
      elsif
        roster[grade] << student
      end
  end



end # of class School