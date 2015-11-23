class School

  attr_reader :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end  

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end 

  def grade(grade)
    @roster[grade]
  end  

  def sort
    sorted_order = {}
    @roster.each do |grade, name|
      sorted_order[grade] = name.sort
    end  
    sorted_order
  end  
end  