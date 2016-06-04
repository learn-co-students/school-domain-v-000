# code here!

class School

  

  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end



  def add_student(name, grade)

    if !roster[grade].nil?
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(array)
     roster[array]
  end

  def sort
    roster.each {|k, v| v.sort!}
  end



end
