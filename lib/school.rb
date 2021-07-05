require 'pry'
# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @this_name=name
    @roster = {}
  end

  
  def add_student(student_name, grade)
    @this_student_name = student_name
    @this_student_grade = grade

    if roster[@this_student_grade] == nil
      
      roster[@this_student_grade] = []
      roster[@this_student_grade] << @this_student_name
    else
      roster[@this_student_grade] << @this_student_name
    end
    roster[@this_student_grade].uniq!
  end

  def grade(number)
    roster[number]
  end

  def sort
    sorted_roster = {}
    roster.each do |grade, grade_array|
      sorted_roster[grade] = []
      sorted_roster[grade] << grade_array.sort
      sorted_roster[grade] = sorted_roster[grade].flatten
    end
    sorted_roster
  end

end

