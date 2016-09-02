require 'pry'
class School
  def initialize(school_name)
    @school_name = school_name
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(student_name,grade)
    @student_name = student_name
    @grade = grade

    if @roster.keys.include?(grade)
      @roster[@grade] << @student_name
    else
      @roster[@grade] = []
      @roster[@grade] << @student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map do |key,value|
      @roster[key] = value.sort
    end
    @roster
  end
end
