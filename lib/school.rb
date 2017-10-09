class School
attr_accessor :roster, :name, :grade

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)
  @roster[grade] ||= []
  @roster[grade] << name
end

def grade(grade)
   @roster[grade]
end

def sort
  @roster.each do |grade, student|
  @roster[grade] = student.sort
end
end

end
