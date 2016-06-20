require "pry"
class School
  def initialize school
    @school = school
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student (student, grade)
    if !@roster.include?(grade)
      @roster[grade] = [student]
    else
      @roster[grade] << student
    end
  end

  def grade grade
    @roster[grade]
  end

  def sort
    @roster.each_value { |students| students.sort!}
    @roster
  end
end