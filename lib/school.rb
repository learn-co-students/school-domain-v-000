# code here!
class School
  attr_reader :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster[grade] != nil
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.collect do |key, value|
      @roster[key] = value.sort
    end
    @roster
  end
end


school = School.new("Test School")
school.roster
