# code here!
class School

attr_reader :name, :roster

  def initialize(name)
    @name= name
    @roster = {}
  end


  def add_student(student_name, student_grade)
    if !roster[student_grade]
      roster[student_grade] = []
    end # ||=
    roster[student_grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.collect {|grade, array| array.sort!}
    roster
  end


end
