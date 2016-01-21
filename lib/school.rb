# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def roster
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    rostertwo = {}
    @roster.each do |sname, grade|
      rostertwo[sname] = grade.sort
    end
    rostertwo
  end

end