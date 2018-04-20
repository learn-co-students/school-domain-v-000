# code here!
class School
  def roster
  @roster
  end
  def initialize(name)
    @roster = {}
    @name = name
  end
  def add_student(name, grade)
    if @roster[grade] != nil
      @roster[grade] << name
    else
      @roster[grade] = [name]
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