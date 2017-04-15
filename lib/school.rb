class School
  attr_reader :name, :roster, :add_student, :grade, :sort


  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student
    else
      @roster[grade] << student
    end
  end

  def grade(students_grade)
    @roster[students_grade]
  end

  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
    @roster
  end

end
