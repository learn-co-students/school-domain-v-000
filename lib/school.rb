# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end
end
  # def student
  #   @student
  # end


  #   if @roster[grade] != nil
  #      @roster[grade] << name
  #   else
  #     @roster[grade] = [name]
  #   end
  # end
  #
  # def grade(grade)
  #   def grade(grade)
  # end
  #
  # def sort
  #   @roster.each do |key, value|
  #     value.sort!
  #   end
  # end
