class School
  def initialize(school)
    @name = school
    @roster = {}
  end

  attr_accessor :name
  attr_reader :roster

  def add_student(name,grade)
    @roster[grade] == nil ? roster[grade] = [name] : roster[grade] << name
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade,students|
      students.sort!
    end
  end
end
