class School 
  def initialize(name)
    @name = name 
    
    @roster = {}
  end 

  attr_reader :name, :roster

  def add_student(name, grade)
    
    @roster[grade] ||= []

    @roster[grade]<<name

  end 

  def grade(grade)
    @roster[grade]

  end 

  def sort 
    @roster.collect do |key, value|
       value.sort!
    end
    @roster  
  end  

end 










