# code here
class School
  def initialize(name)
    @name=name
    @roster={}

  end
  def roster
    @roster
  end
  def add_student(student, grade)
    @roster[grade] = [] if !@roster.include?(grade)
    @roster[grade]<<student
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.collect do|grade, student_array|
       student_array.sort!
    end
    @roster
  end
end
