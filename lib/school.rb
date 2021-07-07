# code here!
class School
  attr_accessor :roster, :name
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
  
  def grade(number)
    @roster[number]
  end
  
  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
  
end