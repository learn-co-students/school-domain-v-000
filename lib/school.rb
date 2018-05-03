# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(name, grade)
      roster[grade] ||= []
      roster[grade] << name
  end
  
  def grade(num)
    roster[num]
  end
    
  def sort
    roster.each {|grade, name_array| name_array.sort!}
  end
  
end