class School

  def initialize(name)
    @roster = {}
    @name = name
  end

  attr_reader :name

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade].push(student)
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, student|
    student.sort!
   end
    @roster
  end

end
