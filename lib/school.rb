# code here!
class School
  attr_accessor :name, :roster


  def initialize(name)
    @name = name
    @roster = {}
  end
  def add_student(name,grade)
    @roster[grade] = [] if @roster[grade] == nil
    @roster[grade] << name
  end
  def grade(num)
    @roster[num]
  end
  def sort
    temp = {}
    @roster.each do |grade, name|
       temp[grade] = name.sort 
    end
    temp
  end

end