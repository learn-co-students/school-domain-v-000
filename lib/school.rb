# code here!
class School
  attr_accessor :roster



  def add_student(name, grade)

    if !roster[grade]
      roster[grade] = []
      roster[grade] << name
    else
      roster[grade] << name
    end

  end

  def initialize(name)
    @name = name
    @roster = {}
  end
  def name
    @name
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort


    roster.each do |grade, name|
        roster[grade] = name.sort
    end


  end

end
