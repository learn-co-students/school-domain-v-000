# code here!
class School
  attr_reader :roster

  def initialize(roster)
    @roster = {}
  end

  def add_student(student, grade)
    if !(@roster.include?(grade))
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(value)
    @roster[value]
  end

  def sort
    @sorted_roster = @roster.keys.sort
    @sorted_roster = @sorted_roster.each do |key, value|
      value.sort
    end
  end
  @sorted_roster
end
