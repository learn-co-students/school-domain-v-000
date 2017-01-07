# code here!

class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end


def add_student(student_name, grade)
  if !@roster[grade]
    @roster[grade] = []
  end
  @roster[grade] << student_name
end

def grade(grade)
  (@roster.select do |grade_level, student_array|
    grade == grade_level
  end).values[0]
end

def sort
  sorted_hash = {}
  @roster.sort.each do |key, array|
    sorted_hash[key] = array.sort
  end
  sorted_hash
end

end
