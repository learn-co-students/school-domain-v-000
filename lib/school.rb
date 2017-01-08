# code here!
require 'pry'
class  School
attr_writer :school_name, :student_name

def roster
roster = Hash.new
end

def initialize(school_name)
  @name = school_name
end

def add_student(student_name, grade)
  binding.pry 
  roster[grade] = []
roster[grade] << student_name
end

def grade(num)
  roster[num].values
end

end