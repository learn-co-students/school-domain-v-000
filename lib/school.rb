class School
  attr_accessor :name, :roster

  def initialize(name)
    @roster = {}
    @name = name
  end
  def roster
    @roster
  end


  def add_student(name, grade)
    roster[grade] ||=[]
    roster[grade].push(name)
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |key, value|
    value.sort!
   end
    roster
  end


end
