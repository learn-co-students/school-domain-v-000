# code here!
class School
  # "school_name" = School.new("School Name")
  attr_accessor :school_name, :roster, :student_name
  def initialize(name)
    @roster = Hash.new{|grade_level, student_to_roster| grade_level[student_to_roster] = [] }
    @school_name = school_name
  end

  # define an attribute (a #method) that adds a new student
  # to the roster
  def add_student(student_name, grade)
    @roster[grade] << student_name
  end

  def grade(grade_level)
    #be able to return the array of students
    @roster[grade_level]
  end

  def sort
    #take each grade and .sort alphabetically
    @roster.each do |key, array|
      array.sort!
    end
  end

end
