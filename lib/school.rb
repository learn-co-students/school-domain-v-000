class School
def initialize(name)
  @name = name
  @roster = Hash.new
end

def roster
  @roster
end

def grade(grade)
  @roster[grade]
end

def add_student(student, grade)
  if @roster[grade] == nil
    @roster[grade] = Array.new << student
  else
    @roster[grade] << student
  end
  end

def sort
  @roster.each do |grade, student|
    student.sort!
  end
end

end