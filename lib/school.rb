class School
  attr_accessor :school_name, :roster, :name, :stu_grade

def initialize(school_name)
    @school_name = school_name
    @roster = {}

end

def add_student(name, stu_grade)

    roster[stu_grade] ||= []
    roster[stu_grade] << name
end

def grade(stu_grade)
  roster[stu_grade]
end

def sort
  sorted = {}
  sorted = roster.map {|grade, name| [grade, name.sort]}
  Hash[sorted]
     end
   end
