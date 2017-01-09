# code here!
class School 
attr_accessor :roster, :student_name, :school

def initialize(school)
  @school = school
  @roster = Hash.new
end


def add_student(student_name, grade)
  if @roster == {} 
    @roster[grade] = []
    @roster[grade] << student_name
  else 
    @roster[grade] << student_name
  end
end

def grade(num)
  @roster[num].values
end

end