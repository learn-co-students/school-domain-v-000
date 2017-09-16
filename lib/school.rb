# code here!
class School
  attr_reader  :roster

  def initialize(name, roster={})
    @name = name
    @roster = roster
  end

  def add_student(student_name, grade)
    if !@roster[grade]
      @roster[grade] = [student_name]
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade][0..-1]
  end

  def sort
    @roster.each do |grade, array|
      array.sort!
    end
  end


end
