# code here!

class School

  attr_accessor :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
    
  end


  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name

    #if roster[grade].nil?
     #roster[grade] = []
      #roster[grade] << name
    #else  
      #roster[grade] << name
     #end
  end

  def grade(num)
    roster[num]
  end

  # this method should arrange the students in each grade by alphabetical order

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end


