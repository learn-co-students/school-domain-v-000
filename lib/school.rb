# code here!
class School
attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster.keys.include? grade
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] = [student_name]
    end
  end

  def grade(grade)
    roster.fetch(grade)
  end

  def sort
    roster.each {|grade, all_students| all_students.sort!}
  end

end
