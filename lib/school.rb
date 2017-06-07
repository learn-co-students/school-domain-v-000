# code here!
class School
  attr_reader :name

  
  def initialize(name)
    @name = name
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = [name]   
    else 
      @roster[grade] << name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |grade, names|
      names.sort!
    end
    @roster
  end
end