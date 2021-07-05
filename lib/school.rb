class School
attr_accessor :roster, :name, :grade

def initialize(school_name)
    @school_name = school_name
    @roster = {}
end

def add_student(name, grade)
  @name = name
  @grade = grade

if @roster.include?(grade) == false
    @roster[grade] = []
  end
@roster[grade] << name
end

def grade(kids_grade)
  @roster[kids_grade]
 end

def sort
  @roster.each do |grade, name|
    @roster[grade] = name.sort
    end
  end
end 
