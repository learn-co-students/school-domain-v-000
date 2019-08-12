# code here!

class School
  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    #@roster[grade] = []
    #@roster[grade] << name
    roster[student_grade] ||= []
    roster[student_grade] << student_name
    #if @roster.key?(student_grade)
    #  @roster[student_grade] << student_name
  #  else
    #  @roster[student_grade] = []
    #  @roster[student_grade] << student_name
  #  end
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    roster.each_value {|student_names| student_names.sort! }
  end
end
