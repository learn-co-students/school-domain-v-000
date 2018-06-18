class School
  def initialize(school)
    @school = school
    @roster = {}
  end
  def roster
    @roster
  end
  def add_student(name, grade)
   @roster[grade] = [] unless @roster[grade]
   @roster[grade] << name
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each{|grade, students| students.sort!}
    @roster
  end
end
  