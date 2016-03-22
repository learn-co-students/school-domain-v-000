class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = @roster[grade] || []
    @roster[grade] << name
  end

  def grade(num)
    @roster[num] || []
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
  
end
