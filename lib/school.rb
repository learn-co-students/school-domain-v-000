class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = { }
  end
  
  def add_student(name, grade)
    # roster[grade] = roster[grade] || [ ]
    roster[grade] ||= [ ]
    roster[grade] << name
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    sorted_list = { }
    roster.each do |grade, names|
      sorted_list[grade] = names.sort
    end
    sorted_list
  end
  
end