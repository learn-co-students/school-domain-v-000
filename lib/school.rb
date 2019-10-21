class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

def initialize(school_name)
  @school_name = school_name
  @roster = Hash.new{ |h, k| h[k] = [] }
end


def add_student(student_name, grade)
    @roster[grade] << student_name
end

def grade(grade)
   h.each_value do |key|
     puts value  
     end 
end