class School
  attr_reader :name

  def initialize(name)
    @school=name
    def roster
      roster={}
    end
  end

  def add_student(student_name, student_grade)
    roster[student_name] = []
    roster[student_name] << student_grade
  end

end
