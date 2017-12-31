# code here!
class School
attr_accessor :name, :roster, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[new_student] = []
    roster[new_student] << student_name
    roster[new_student] << grade
  end

end
