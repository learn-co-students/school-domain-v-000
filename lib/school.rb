# code here!
class School
  attr_accessor :student_names, :grade
  attr_reader :roster
  
  def initialize(roster)
    @roster = {}
    @student_names = []
  end
  
  def add_student(student_name, grade)
    @grade = grade
    if @roster.has_key?(@grade)
      @roster[@grade] = @student_names << student_name
    else
      @student_names = []
      @roster[@grade] = @student_names << student_name
    end
  end
  
  def grade(grade)
    @grade = grade
    @roster.fetch(@grade)
  end
  
  def sort
    @roster.each {|grade, students| students.sort!}
  end
end
