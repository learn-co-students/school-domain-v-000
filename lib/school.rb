class School
  attr_reader :roster, :school

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade] || []
  end

  def sort
    roster.reduce({}) do |sorted_roster, (grade, students) |
      sorted_roster[grade] = students.sort
      sorted_roster
    end
  end
end # class School
