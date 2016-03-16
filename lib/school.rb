class School

  attr_accessor :name, :roster, :grade, :student

  def initialize(name)
    @name=name
    @roster = {}
  end

  def add_student(student, grade)
    @student=student
    @grade=grade
    @roster[grade] ||= []
    @roster[grade] << @student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    @roster
  end

end