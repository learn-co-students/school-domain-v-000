class School
  attr_accessor :student, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(student, grade)
    # @roster[grade] = [] unless @roster.include?(grade)
    roster[grade] ||= [] # a||=b if a is nil, false, or undefined, evaluate b and set a to the return of b.
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted ||= roster
    sorted.keys.map { |grade| sorted[grade].sort! }
    sorted
  end

end

# school = School.new("Bayside High School")
# school.roster
#
# school.add_student("Zach Morris", 9)
# school.roster
#
# school.add_student("AC Slater", 9)
# school.add_student("Kelly Kapowski", 10)
# school.add_student("Screech", 11)
# school.roster
# # => {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
#
# school.grade(9)
# # => ["Zach Morris", "AC Slater"]
#
# school.sort
# # => {9 => ["AC Slater", "Zach Morris"], 10 => ["Aardvark", "Kelly Kapowski"], 11 => ["Screech", "Xavier"]}
