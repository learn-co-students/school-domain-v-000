# code here!

require 'pry'



class School
  attr_accessor  :student, :age
  attr_reader  :name

  def initialize(name)
    @name = name
    @ROSTER = {}

  end
  def roster 
    return @ROSTER
  end



  def add_student(student,age)


    @student = student

    @age = age
    if @ROSTER.has_key?(age) && @ROSTER[age].include?(student)
      nil
    elsif @ROSTER.has_key?(age)
      @ROSTER[age]<<student
    else
      @ROSTER[age] = []
      @ROSTER[age]<<student
    end
  end




  def grade(age)
    return @ROSTER[age]
  end

  def sort
    @ROSTER.each do |key,value|
      value.sort!
    end
    return @ROSTER
    
  end


end