class School
  attr_accessor :name, :grade, :roster
  attr_reader

  School.new("Bayside High School")

  def initialize
        School.new = {}
  end

  def add_student(name, grade)
    school.roster = Array.new(name, grade)
    "Zach Morris" >> 9
    "AC Slater" >> 9
    "Kelly Kapowski" >> 10
    "Screech" >> 11
    # able add students to diff grades
  end

  def grade(grade)
    school.grade(9)
    school.grade(10)
    school.grade(11)
    roster.fetch
  end

  def sort(roster)
    roster.sort
  end
end
