# code here!

class School

  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(newstudent, grade)
  if @roster.has_key?(grade)
      @roster[grade] << newstudent
  else
    @roster[grade] = []
    @roster[grade] << newstudent
  end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    @roster.each do |grade, students|
      students.sort!
    end
  end
end