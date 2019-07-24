# code here!

class School
  
  attr_accessor :school_name, :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    # @roster[grade].sort{|a, b| a<=>b}
    
    # @roster.map {|grade, student_name| .sort{|a, b| a<=>b} }
    
    @roster.each {|grade, student_names| student_names.sort!{|a, b| a<=>b}}
    
    #need to look into sort and sort!
    
  end
end


