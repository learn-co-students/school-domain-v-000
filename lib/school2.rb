require 'pry'

class School

  ROSTER = {}

  def initialize(school_name)
    @school_name = school_name
  end

  def roster
    ROSTER
  end

  def grade(grade)
    ROSTER[grade]
  end

  def add_student(name, grade)
    ROSTER[grade] = [] unless ROSTER.key?(grade)
    ROSTER[grade] << name unless ROSTER[grade].include?(name)
  end

end

school = School.new("test")

school.add_student("AC Slater", 9)

binding.pry


school2 = School.new("test2")

binding.pry