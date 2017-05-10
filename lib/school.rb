# code here!

class School
  attr_reader :roster, :add_student

  def initialize (name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.has_key? grade
      roster[grade] << student
    else
      roster[grade]=[]
      roster[grade] << student
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    new_roster = {}
    @roster.each { |grade, people| 
      new_roster[grade] = people.sort
    }
    new_roster
  end
end
