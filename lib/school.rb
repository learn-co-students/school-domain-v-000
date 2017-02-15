# code here!

class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student, grade)
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
