require 'pry'

class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

 #  def add_student(student_name, grade)
 #   roster[grade] ||= []
 #   roster[grade] << student_name
 # end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

  # def sort
  #   sorted = {}
  #   roster.each do |grade, students|
  #     sorted[grade] = students.sort
  #   end
  #   sorted
  # end

end
