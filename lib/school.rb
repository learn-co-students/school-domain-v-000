require 'pry'
class School

  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade_level)
    # add a student
    # add multiple students to a class (grade)
    # add students to different grades

    if @roster[grade_level].nil?
      @roster[grade_level] = []
    end
    @roster[grade_level] << student_name
  end

  def grade(grade_level)
    # add a student
    # retrieve students from a grade
    @roster[grade_level]
  end

  def sort
    # sort the students
    sorted_roster = {}
    @roster.each do |key, value|
      sorted_roster[key] = value.sort
    end

    sorted_roster
  end
end
