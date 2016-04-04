class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] = [] unless roster.has_key?(grade)
    roster[grade] << name
  end

  def grade(grade_number)
    roster[grade_number]
  end

  def sort
    roster.each do |grade, students|
      students.sort!
    end
    roster
  end

end