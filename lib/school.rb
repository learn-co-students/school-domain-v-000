# code here!
class School 
attr_accessor :roster :student_name :school_name

def initialize(name)
  @name = name
end


def add_student(student_name, grade)
  roster[grade] = []
  roster[grade] << student_name
  end

end