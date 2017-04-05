require 'pry'
class School
  attr_accessor :name
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {} #이건 왜 def로 새로 만들면 적용이 안되는거지? .name / .roster할때 뭐때문에 접근이 가능한거지
  end

  def add_student(student_name,grade)
    @student_name = student_name
    @grade = grade

    roster[grade] = [] if !@roster.keys.include?(grade)
    roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster= Hash[@roster.sort_by { |grade, name| grade}]
    @roster.collect {|grade,name| name.sort!}
    @roster
  end

end
    #binding.pry
