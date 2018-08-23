class School
  
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= [] 
    @roster[grade] << student_name
  end
  
  def grade(num)
    @roster[num]
  end
    
  def sort
    roster.each_value { |v| v.sort! }
  end
    
end
