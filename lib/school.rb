class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = Hash.new {|s,g| s[g] = [] }
  end

  def add_student(student, grade)
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
    
  end

  def sort
    new = {}
    @roster.each do |s,g|
        new[s] = g.sort
    end
     new
  end
 
end