class School
  attr_accessor :name, :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(students_name, grade)
    if @roster.key?(grade)
      @roster[grade] << students_name
    else
      @roster[grade] = []
      @roster[grade] << students_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_school = {}
    @roster.each do |grade, students|
     sorted_school[grade] = students.sort
    end
    sorted_school
  end
end
