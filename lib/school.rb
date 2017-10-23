class School
  attr_accessor :roster, :name, :grade


def initialize(school)
  @school = school
  roster = {}
  student_with_grade = []
end

def add_student(name, grade)
  roster[student_with_grade] << name
  roster[student_with_grade] << grade
end

end
