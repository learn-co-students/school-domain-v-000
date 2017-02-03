# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(arg)
    @roster[arg]
  end

  def sort
    @sorted = {}
    @roster.each do |grade, person|
      @sorted[grade] = person.sort
    end
    @sorted
  end

end
