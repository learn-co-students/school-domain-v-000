# code here!
class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  # def roster
  #   @roster_hash = {}
  # end

  def add_student(student_name, grade)
    if @roster.key?(grade)
      @roster[grade] = (@roster[grade] << student_name)
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
    end
  end

end
