class School

  attr_accessor :roster 

  def initialize(school)
    @school = school
    @roster = {}
  end 

  def add_student(name, grade)
    unless roster.include?(grade)
      roster[grade] = []
    end 
    roster[grade] << name
  end 

  def grade(grade)
    return roster[grade]
  end

  def sort
    rost_sorted = Hash[roster.sort_by {|key, val| key}]
    rost_sorted.each do |key, value|
      if value[0] > value[1]
        value[0], value[1] = value[1], value[0]
      end 
    end 
  end 
  
end 