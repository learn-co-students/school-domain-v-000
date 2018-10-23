class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(student_name, grade)
    @roster[grade] = [] if !@roster.keys.include?(grade)
    @roster[grade] << "#{student_name}"
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.keys.each do |key|
      @roster[key].sort! 
    end 
    @roster
  end 
end 