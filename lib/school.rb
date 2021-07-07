class School
  attr_accessor :roster
  def initialize(roster)
  @roster = roster
  @roster = {}
  end
 
  def add_student(student, grade)
    if @roster.has_key?(grade)
       @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade, student|
      @roster[grade] = student.sort
    end
  end
end

=begin
  
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

  def grade(student_grade)
    roster[student_grade]
  end

  # this method should arrange the students in each grade by alphabetical order
  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end

=end