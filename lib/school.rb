class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def name
    @name
    end
  def roster=(roster)
    @roster=roster
  end
  def roster
    @roster
  end
  def add_student(student_name, grade)
      roster[grade] ||= []
    roster[grade] << student_name
  end
  def grade(student_grade)
    roster[student_grade]
  end
  def sort
    sorted_array={}
    roster.each do |grade, students|
      sorted_array[grade]=students.sort
    end
    sorted_array
  end
end