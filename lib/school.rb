# code here!
class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] = [] if !@roster.include? grade
    @roster[grade] << student_name
    @roster
  end

  def grade(grade)
    @roster.include?(grade) ? @roster[grade] : {}
  end

  def sort
    res = {}
    @roster.sort.to_h.each { |key, value| res[key] = value.sort }
    res
  end
end
