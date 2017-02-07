class School

attr_reader :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end


def add_student (student_name, grade)
  if @roster.key?(grade)
    @roster[grade] << student_name
  else
    @roster[grade] = []
    @roster[grade] << student_name
  end
end

def grade (grade)
  @roster[grade]
end

def sort
  new_grade ={}
  @roster.collect do |grade, students|
  new_grade[grade]= students.sort
  end
  new_grade
end

end
