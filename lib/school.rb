# code here!
class School
  def initialize(name)
    @name = name
  end

  def roster(roster = {})
    @roster = roster
  end

  def add_student(student_name, grade)
    roster[grade] = []
    puts roster
  end
end
