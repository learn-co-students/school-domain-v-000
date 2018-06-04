class School
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student, age)
    if @roster[age] != nil
      @roster[age] << student
    else
      @roster[age] = []
      @roster[age] << student
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end