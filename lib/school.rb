class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  def name
    @name
  end
  def roster
    @roster
  end
  def add_student(student,grade)
    @roster[grade] = [] if @roster.keys.include?(grade) != true
    @roster[grade] << student
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    @roster.each do |grade,students|
      students.sort!
    end
  end
end




