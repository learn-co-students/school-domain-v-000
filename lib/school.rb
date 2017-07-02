class School

  attr_accessor :roster



  def initialize(roster)
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade].kind_of?(Array) == true
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    arr = []
    roster[grade].each do |grades|
      arr << grades
    arr
  end
  end

  def sort
    roster.each do |grade, name|
      name.sort!
    end
  end

end
