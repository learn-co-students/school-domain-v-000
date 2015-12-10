class School
  # attr accessor :roster
  attr_reader :school, :roster

  def initialize(school)
    @school = school
    @roster = []
  end

  def add_student(student, placement=0)
    @roster[placement-1] = student
    print @roster
  end

  def roster()

end

Yo = School.new("Yo")
Yo.add_student("AC", 10) 