class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if roster.include?(grade) == false
    roster[grade] = []
    end
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do|grade, student|
      sorted_roster[grade] = student.sort
    end
    sorted_roster
  end
end
