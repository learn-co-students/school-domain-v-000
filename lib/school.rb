

class School

  attr_accessor :name 

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)  
    @roster[grade] ||= []
    @roster[grade] << student unless @roster[grade].include?(student)
    
  end

  def grade(grade)
    @roster[grade]
  end


  def sort
    @roster.collect do |grade, students|
      @roster[grade].sort!   
    end
    @roster
  end

end


