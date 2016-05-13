# code here!
class School
  attr_accessor :school, :roster
  def initialize(name)
    @school = name
    @roster = {}
  end

  def add_student(students, grade)
    roster[grade] ||= []
    roster[grade] << students
    # students.each do |student|
    #   roster[grade]<<student
    # end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    var = {}
    roster.each do |grade, students|
      var[grade] = students.sort
    end
    return var
  end
end
