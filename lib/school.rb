class School

  attr_accessor
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster[grade] = [] unless @roster.has_key? grade
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade].map { |student| student }
  end

  def sort
    @roster.each { |grade, students| students.sort! }
  end
end
