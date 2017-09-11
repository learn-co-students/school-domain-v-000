# code here!
class School
  attr_accessor :roster, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade_level)
    @roster[grade_level] ||= []
    @roster[grade_level] << student_name
    # if @roster[grade_level]
    #   @roster[grade_level] << student_name
    # else @roster[grade_level] = []
    #   @roster[grade_level] << student_name
    # end
  end
  #
  def grade(grade_level)
    @roster[grade_level]
  end

  def sort
    sorted = {}
    @roster.each do |grade_level, student_name|
      sorted[grade_level] = student_name.sort
    end
    sorted
  end

end
