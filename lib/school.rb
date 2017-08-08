# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(students, grade)
    @roster[grade] = [] unless @roster.keys.include?(grade)
    @roster[grade] << students
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each {|grade, students| @roster[grade] = students.sort}
  end
  
end
