# code here!
<<<<<<< HEAD
class School 
attr_accessor :roster :student_name :school_name

def initialize(name)
  @name = name
end


def add_student(student_name, grade)
  roster[grade] = []
  roster[grade] << student_name
  end
=======
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
>>>>>>> dcf1b153f415a23452ca4a2f3f3cdfb618950581

end