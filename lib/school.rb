class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  # add_student("AC Slater", 10)
  # {10=>["AC Slater"]}
  #add_studnet("STUDENT", 10)
  def add_student(student, grade)
    # a || a = b
    # a is only set to b if logically false on left side (nil / false)
    # if left side(a) is true, no need to check right side
    roster[grade] ||= []
    roster[grade] << student
  end

  # should return an array of all students in the passed in grade argument
  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

end
