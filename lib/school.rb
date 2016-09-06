class School


  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(student)
    @roster[student]
  end

  def sort
    sorted_roster = {}
    @roster.each do |grade, name|
      sorted_roster[grade] = name.sort
    end
    sorted_roster
  end
end
