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

  def add_student(student_name, grade)
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster_sorted = @roster
    @roster_sorted.each do |grade, student_names|
      @roster_sorted[grade].sort!
    end
    @roster_sorted
  end

end
