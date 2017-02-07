# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def sort
    # sorted = {}
    # @roster.each { |grade, students| sorted[grade] = students.sort }
    # sorted

    @roster.each { |grade, students| students.sort! }
  end

end
