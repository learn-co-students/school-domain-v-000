# code here!


class = School

  attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}

end

def add_student(student_name, student_grade)
  @roster[student_grade] ||= []
  @roster[student_grade] << student_name
end

def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, name_list|
    @roster[grade] = name_list.sort
  end
end

  
end
