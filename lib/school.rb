# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] || @roster[grade]= []
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.transform_values {|students| students.sort}
    # @roster.map do |grade, students|
    #   @roster[grade] = students.sort
    # end
    # @roster
  end
  
end
