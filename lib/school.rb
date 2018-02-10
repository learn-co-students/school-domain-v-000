# code here!
class School
  attr_accessor
  attr_reader :name, :roster



  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)  # roster = {10 =>["AC Slater"]}
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << student
  }

  end
end
