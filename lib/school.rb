require 'pry'
class School

  attr_accessor
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}

  end

  def add_student(student_name, grade)
    if @roster.empty?
      @roster[grade] = []
      @roster[grade] << student_name
    elsif !@roster.has_key? grade
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_students = {}
    @roster.each {|grade, student| sorted_students[grade] = student.sort}
    sorted_students
  end

end
