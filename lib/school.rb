# code here!
class School 
attr_accessor :roster, :student_name, :school

def initialize(school)
  @school = school
  @roster = Hash.new
end


def add_student(student_name, grade)
  @roster[grade] ||= []
  @roster[grade] << student_name
end

def grade(num)
  @roster.each do |key,values|
   if key == num
    return values
  end
  end
end

def sort
  @roster.each do |grade, name|
    name.sort!
  end
end

end